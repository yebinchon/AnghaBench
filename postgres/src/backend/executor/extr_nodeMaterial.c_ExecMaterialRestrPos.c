
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eflags; int tuplestorestate; } ;
typedef TYPE_1__ MaterialState ;


 int Assert (int) ;
 int EXEC_FLAG_MARK ;
 int tuplestore_copy_read_pointer (int ,int,int ) ;

void
ExecMaterialRestrPos(MaterialState *node)
{
 Assert(node->eflags & EXEC_FLAG_MARK);




 if (!node->tuplestorestate)
  return;




 tuplestore_copy_read_pointer(node->tuplestorestate, 1, 0);
}
