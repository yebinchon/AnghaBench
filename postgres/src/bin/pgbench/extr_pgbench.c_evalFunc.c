
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PgBenchValue ;
typedef int PgBenchFunction ;
typedef int PgBenchExprLink ;
typedef int CState ;


 int evalLazyFunc (int *,int ,int *,int *) ;
 int evalStandardFunc (int *,int ,int *,int *) ;
 scalar_t__ isLazyFunc (int ) ;

__attribute__((used)) static bool
evalFunc(CState *st,
   PgBenchFunction func, PgBenchExprLink *args, PgBenchValue *retval)
{
 if (isLazyFunc(func))
  return evalLazyFunc(st, func, args, retval);
 else
  return evalStandardFunc(st, func, args, retval);
}
