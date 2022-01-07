
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {scalar_t__ oper; int left; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ qoperator; } ;
typedef TYPE_1__ QueryOperator ;
typedef TYPE_2__ QueryItem ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ OP_AND ;
 scalar_t__ OP_NOT ;
 scalar_t__ OP_OR ;
 scalar_t__ OP_PHRASE ;
 scalar_t__ QI_OPR ;
 scalar_t__ QI_VAL ;
 scalar_t__ QI_VALSTOP ;
 int check_stack_depth () ;
 int elog (int ,char*) ;

__attribute__((used)) static void
findoprnd_recurse(QueryItem *ptr, uint32 *pos, int nnodes, bool *needcleanup)
{

 check_stack_depth();

 if (*pos >= nnodes)
  elog(ERROR, "malformed tsquery: operand not found");

 if (ptr[*pos].type == QI_VAL)
 {
  (*pos)++;
 }
 else if (ptr[*pos].type == QI_VALSTOP)
 {
  *needcleanup = 1;
  (*pos)++;
 }
 else
 {
  Assert(ptr[*pos].type == QI_OPR);

  if (ptr[*pos].qoperator.oper == OP_NOT)
  {
   ptr[*pos].qoperator.left = 1;
   (*pos)++;


   findoprnd_recurse(ptr, pos, nnodes, needcleanup);
  }
  else
  {
   QueryOperator *curitem = &ptr[*pos].qoperator;
   int tmp = *pos;

   Assert(curitem->oper == OP_AND ||
       curitem->oper == OP_OR ||
       curitem->oper == OP_PHRASE);

   (*pos)++;


   findoprnd_recurse(ptr, pos, nnodes, needcleanup);

   curitem->left = *pos - tmp;


   findoprnd_recurse(ptr, pos, nnodes, needcleanup);
  }
 }
}
