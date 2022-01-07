
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int8 ;
struct TYPE_3__ {scalar_t__ op; int distance; } ;
typedef int TSQueryParserState ;
typedef TYPE_1__ OperatorElement ;


 scalar_t__ OP_NOT ;
 int OP_PRIORITY (scalar_t__) ;
 int pushOperator (int ,scalar_t__,int ) ;

__attribute__((used)) static void
cleanOpStack(TSQueryParserState state,
    OperatorElement *stack, int *lenstack, int8 op)
{
 int opPriority = OP_PRIORITY(op);

 while (*lenstack)
 {

  if ((op != OP_NOT && opPriority > OP_PRIORITY(stack[*lenstack - 1].op)) ||
   (op == OP_NOT && opPriority >= OP_PRIORITY(stack[*lenstack - 1].op)))
   break;

  (*lenstack)--;
  pushOperator(state, stack[*lenstack].op,
      stack[*lenstack].distance);
 }
}
