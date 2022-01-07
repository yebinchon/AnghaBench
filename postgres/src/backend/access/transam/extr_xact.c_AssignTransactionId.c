
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t nsubxacts; int xtop; } ;
typedef TYPE_1__ xl_xact_assignment ;
typedef TYPE_2__* TransactionState ;
typedef int TransactionId ;
struct TYPE_9__ {int didLogXid; } ;
struct TYPE_8__ {scalar_t__ state; int nestingLevel; int fullTransactionId; int curTransactionOwner; struct TYPE_8__* parent; } ;
typedef int ResourceOwner ;


 int Assert (int) ;
 int CurrentResourceOwner ;
 int ERROR ;
 int FullTransactionIdIsValid (int ) ;
 int GetNewTransactionId (int) ;
 int GetTopTransactionId () ;
 scalar_t__ IsInParallelMode () ;
 scalar_t__ IsParallelWorker () ;
 size_t MinSizeOfXactAssignment ;
 size_t PGPROC_MAX_CACHED_SUBXIDS ;
 int RM_XACT_ID ;
 int RegisterPredicateLockingXid (int ) ;
 int SubTransSetParent (int ,int ) ;
 scalar_t__ TRANS_INPROGRESS ;
 TYPE_5__ TopTransactionStateData ;
 int TransactionIdIsValid (int ) ;
 int XLOG_XACT_ASSIGNMENT ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 scalar_t__ XLogLogicalInfoActive () ;
 int XLogRegisterData (char*,size_t) ;
 scalar_t__ XLogStandbyInfoActive () ;
 int XactLockTableInsert (int ) ;
 int XactTopFullTransactionId ;
 int XidFromFullTransactionId (int ) ;
 int elog (int ,char*) ;
 size_t nUnreportedXids ;
 TYPE_2__** palloc (int) ;
 int pfree (TYPE_2__**) ;
 int * unreportedXids ;

__attribute__((used)) static void
AssignTransactionId(TransactionState s)
{
 bool isSubXact = (s->parent != ((void*)0));
 ResourceOwner currentOwner;
 bool log_unknown_top = 0;


 Assert(!FullTransactionIdIsValid(s->fullTransactionId));
 Assert(s->state == TRANS_INPROGRESS);





 if (IsInParallelMode() || IsParallelWorker())
  elog(ERROR, "cannot assign XIDs during a parallel operation");







 if (isSubXact && !FullTransactionIdIsValid(s->parent->fullTransactionId))
 {
  TransactionState p = s->parent;
  TransactionState *parents;
  size_t parentOffset = 0;

  parents = palloc(sizeof(TransactionState) * s->nestingLevel);
  while (p != ((void*)0) && !FullTransactionIdIsValid(p->fullTransactionId))
  {
   parents[parentOffset++] = p;
   p = p->parent;
  }





  while (parentOffset != 0)
   AssignTransactionId(parents[--parentOffset]);

  pfree(parents);
 }
 if (isSubXact && XLogLogicalInfoActive() &&
  !TopTransactionStateData.didLogXid)
  log_unknown_top = 1;
 s->fullTransactionId = GetNewTransactionId(isSubXact);
 if (!isSubXact)
  XactTopFullTransactionId = s->fullTransactionId;

 if (isSubXact)
  SubTransSetParent(XidFromFullTransactionId(s->fullTransactionId),
        XidFromFullTransactionId(s->parent->fullTransactionId));





 if (!isSubXact)
  RegisterPredicateLockingXid(XidFromFullTransactionId(s->fullTransactionId));






 currentOwner = CurrentResourceOwner;
 CurrentResourceOwner = s->curTransactionOwner;

 XactLockTableInsert(XidFromFullTransactionId(s->fullTransactionId));

 CurrentResourceOwner = currentOwner;
 if (isSubXact && XLogStandbyInfoActive())
 {
  unreportedXids[nUnreportedXids] = XidFromFullTransactionId(s->fullTransactionId);
  nUnreportedXids++;





  if (nUnreportedXids >= PGPROC_MAX_CACHED_SUBXIDS ||
   log_unknown_top)
  {
   xl_xact_assignment xlrec;





   xlrec.xtop = GetTopTransactionId();
   Assert(TransactionIdIsValid(xlrec.xtop));
   xlrec.nsubxacts = nUnreportedXids;

   XLogBeginInsert();
   XLogRegisterData((char *) &xlrec, MinSizeOfXactAssignment);
   XLogRegisterData((char *) unreportedXids,
        nUnreportedXids * sizeof(TransactionId));

   (void) XLogInsert(RM_XACT_ID, XLOG_XACT_ASSIGNMENT);

   nUnreportedXids = 0;

   TopTransactionStateData.didLogXid = 1;
  }
 }
}
