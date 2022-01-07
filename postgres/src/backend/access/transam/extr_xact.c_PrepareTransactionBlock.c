
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {scalar_t__ blockState; struct TYPE_3__* parent; } ;


 int Assert (int) ;
 TYPE_1__* CurrentTransactionState ;
 int EndTransactionBlock (int) ;
 int MemoryContextStrdup (int ,char const*) ;
 scalar_t__ TBLOCK_END ;
 scalar_t__ TBLOCK_IMPLICIT_INPROGRESS ;
 scalar_t__ TBLOCK_PREPARE ;
 scalar_t__ TBLOCK_STARTED ;
 int TopTransactionContext ;
 int prepareGID ;

bool
PrepareTransactionBlock(const char *gid)
{
 TransactionState s;
 bool result;


 result = EndTransactionBlock(0);


 if (result)
 {
  s = CurrentTransactionState;

  while (s->parent != ((void*)0))
   s = s->parent;

  if (s->blockState == TBLOCK_END)
  {

   prepareGID = MemoryContextStrdup(TopTransactionContext, gid);

   s->blockState = TBLOCK_PREPARE;
  }
  else
  {




   Assert(s->blockState == TBLOCK_STARTED ||
       s->blockState == TBLOCK_IMPLICIT_INPROGRESS);

   result = 0;
  }
 }

 return result;
}
