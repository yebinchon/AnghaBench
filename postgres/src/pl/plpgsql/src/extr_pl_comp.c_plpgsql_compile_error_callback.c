
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errcontext (char*,scalar_t__,int ) ;
 scalar_t__ function_parse_error_transpose (char const*) ;
 scalar_t__ plpgsql_error_funcname ;
 int plpgsql_latest_lineno () ;

__attribute__((used)) static void
plpgsql_compile_error_callback(void *arg)
{
 if (arg)
 {




  if (function_parse_error_transpose((const char *) arg))
   return;





 }

 if (plpgsql_error_funcname)
  errcontext("compilation of PL/pgSQL function \"%s\" near line %d",
       plpgsql_error_funcname, plpgsql_latest_lineno());
}
