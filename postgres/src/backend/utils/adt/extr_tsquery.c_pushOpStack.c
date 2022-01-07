
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int8 ;
typedef int int16 ;
struct TYPE_3__ {int distance; int op; } ;
typedef TYPE_1__ OperatorElement ;


 int ERROR ;
 int STACKDEPTH ;
 int elog (int ,char*) ;

__attribute__((used)) static void
pushOpStack(OperatorElement *stack, int *lenstack, int8 op, int16 distance)
{
 if (*lenstack == STACKDEPTH)
  elog(ERROR, "tsquery stack too small");

 stack[*lenstack].op = op;
 stack[*lenstack].distance = distance;

 (*lenstack)++;
}
