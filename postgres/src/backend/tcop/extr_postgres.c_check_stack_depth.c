
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_STATEMENT_TOO_COMPLEX ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,int ) ;
 int errmsg (char*) ;
 int max_stack_depth ;
 scalar_t__ stack_is_too_deep () ;

void
check_stack_depth(void)
{
 if (stack_is_too_deep())
 {
  ereport(ERROR,
    (errcode(ERRCODE_STATEMENT_TOO_COMPLEX),
     errmsg("stack depth limit exceeded"),
     errhint("Increase the configuration parameter \"max_stack_depth\" (currently %dkB), "
       "after ensuring the platform's stack depth limit is adequate.",
       max_stack_depth)));
 }
}
