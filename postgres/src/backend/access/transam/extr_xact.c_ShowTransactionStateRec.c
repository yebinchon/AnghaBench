
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_7__ {int data; } ;
struct TYPE_6__ {scalar_t__ nChildXids; char* name; scalar_t__ subTransactionId; int fullTransactionId; int state; int blockState; int nestingLevel; struct TYPE_6__* parent; int * childXids; } ;
typedef TYPE_2__ StringInfoData ;


 int BlockStateAsString (int ) ;
 int DEBUG5 ;
 scalar_t__ PointerIsValid (char*) ;
 int TransStateAsString (int ) ;
 scalar_t__ XidFromFullTransactionId (int ) ;
 int appendStringInfo (TYPE_2__*,char*,int ) ;
 scalar_t__ currentCommandId ;
 scalar_t__ currentCommandIdUsed ;
 int ereport (int ,int ) ;
 int errmsg_internal (char*,char const*,int ,char*,int ,int ,unsigned int,unsigned int,unsigned int,char*,int ) ;
 int initStringInfo (TYPE_2__*) ;
 int pfree (int ) ;

__attribute__((used)) static void
ShowTransactionStateRec(const char *str, TransactionState s)
{
 StringInfoData buf;

 initStringInfo(&buf);

 if (s->nChildXids > 0)
 {
  int i;

  appendStringInfo(&buf, ", children: %u", s->childXids[0]);
  for (i = 1; i < s->nChildXids; i++)
   appendStringInfo(&buf, " %u", s->childXids[i]);
 }

 if (s->parent)
  ShowTransactionStateRec(str, s->parent);


 ereport(DEBUG5,
   (errmsg_internal("%s(%d) name: %s; blockState: %s; state: %s, xid/subid/cid: %u/%u/%u%s%s",
        str, s->nestingLevel,
        PointerIsValid(s->name) ? s->name : "unnamed",
        BlockStateAsString(s->blockState),
        TransStateAsString(s->state),
        (unsigned int) XidFromFullTransactionId(s->fullTransactionId),
        (unsigned int) s->subTransactionId,
        (unsigned int) currentCommandId,
        currentCommandIdUsed ? " (used)" : "",
        buf.data)));

 pfree(buf.data);
}
