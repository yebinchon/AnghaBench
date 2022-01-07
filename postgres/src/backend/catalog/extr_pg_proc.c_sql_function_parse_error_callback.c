
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proname; int prosrc; } ;
typedef TYPE_1__ parse_error_callback_arg ;


 int errcontext (char*,int ) ;
 int function_parse_error_transpose (int ) ;

__attribute__((used)) static void
sql_function_parse_error_callback(void *arg)
{
 parse_error_callback_arg *callback_arg = (parse_error_callback_arg *) arg;


 if (!function_parse_error_transpose(callback_arg->prosrc))
 {

  errcontext("SQL function \"%s\"", callback_arg->proname);
 }
}
