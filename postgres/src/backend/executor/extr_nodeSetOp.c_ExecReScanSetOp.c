
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int * chgParam; } ;
struct TYPE_8__ {scalar_t__ strategy; } ;
struct TYPE_6__ {TYPE_5__* lefttree; scalar_t__ plan; int ps_ResultTupleSlot; } ;
struct TYPE_7__ {int setop_done; int table_filled; TYPE_1__ ps; int hashtable; scalar_t__ tableContext; int * grp_firstTuple; int hashiter; scalar_t__ numOutput; } ;
typedef TYPE_2__ SetOpState ;
typedef TYPE_3__ SetOp ;


 int ExecClearTuple (int ) ;
 int ExecReScan (TYPE_5__*) ;
 int MemoryContextResetAndDeleteChildren (scalar_t__) ;
 int ResetTupleHashIterator (int ,int *) ;
 int ResetTupleHashTable (int ) ;
 scalar_t__ SETOP_HASHED ;
 int heap_freetuple (int *) ;

void
ExecReScanSetOp(SetOpState *node)
{
 ExecClearTuple(node->ps.ps_ResultTupleSlot);
 node->setop_done = 0;
 node->numOutput = 0;

 if (((SetOp *) node->ps.plan)->strategy == SETOP_HASHED)
 {






  if (!node->table_filled)
   return;






  if (node->ps.lefttree->chgParam == ((void*)0))
  {
   ResetTupleHashIterator(node->hashtable, &node->hashiter);
   return;
  }
 }


 if (node->grp_firstTuple != ((void*)0))
 {
  heap_freetuple(node->grp_firstTuple);
  node->grp_firstTuple = ((void*)0);
 }


 if (node->tableContext)
  MemoryContextResetAndDeleteChildren(node->tableContext);


 if (((SetOp *) node->ps.plan)->strategy == SETOP_HASHED)
 {
  ResetTupleHashTable(node->hashtable);
  node->table_filled = 0;
 }





 if (node->ps.lefttree->chgParam == ((void*)0))
  ExecReScan(node->ps.lefttree);
}
