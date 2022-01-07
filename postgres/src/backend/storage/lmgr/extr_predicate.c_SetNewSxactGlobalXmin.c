
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ SxactGlobalXmin; int SxactGlobalXminCount; } ;
struct TYPE_9__ {scalar_t__ xmin; } ;
typedef TYPE_1__ SERIALIZABLEXACT ;


 int Assert (int) ;
 TYPE_1__* FirstPredXact () ;
 scalar_t__ InvalidTransactionId ;
 int LWLockHeldByMe (int ) ;
 TYPE_1__* NextPredXact (TYPE_1__*) ;
 TYPE_1__* OldCommittedSxact ;
 int OldSerXidSetActiveSerXmin (scalar_t__) ;
 TYPE_4__* PredXact ;
 int SerializableXactHashLock ;
 int SxactIsCommitted (TYPE_1__*) ;
 int SxactIsRolledBack (TYPE_1__*) ;
 scalar_t__ TransactionIdEquals (scalar_t__,scalar_t__) ;
 int TransactionIdIsValid (scalar_t__) ;
 scalar_t__ TransactionIdPrecedes (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
SetNewSxactGlobalXmin(void)
{
 SERIALIZABLEXACT *sxact;

 Assert(LWLockHeldByMe(SerializableXactHashLock));

 PredXact->SxactGlobalXmin = InvalidTransactionId;
 PredXact->SxactGlobalXminCount = 0;

 for (sxact = FirstPredXact(); sxact != ((void*)0); sxact = NextPredXact(sxact))
 {
  if (!SxactIsRolledBack(sxact)
   && !SxactIsCommitted(sxact)
   && sxact != OldCommittedSxact)
  {
   Assert(sxact->xmin != InvalidTransactionId);
   if (!TransactionIdIsValid(PredXact->SxactGlobalXmin)
    || TransactionIdPrecedes(sxact->xmin,
           PredXact->SxactGlobalXmin))
   {
    PredXact->SxactGlobalXmin = sxact->xmin;
    PredXact->SxactGlobalXminCount = 1;
   }
   else if (TransactionIdEquals(sxact->xmin,
           PredXact->SxactGlobalXmin))
    PredXact->SxactGlobalXminCount++;
  }
 }

 OldSerXidSetActiveSerXmin(PredXact->SxactGlobalXmin);
}
