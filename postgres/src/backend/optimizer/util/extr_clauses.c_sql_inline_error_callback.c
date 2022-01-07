
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proname; int prosrc; } ;
typedef TYPE_1__ inline_error_callback_arg ;


 int errcontext (char*,int ) ;
 int errposition (int ) ;
 int geterrposition () ;
 int internalerrposition (int) ;
 int internalerrquery (int ) ;

__attribute__((used)) static void
sql_inline_error_callback(void *arg)
{
 inline_error_callback_arg *callback_arg = (inline_error_callback_arg *) arg;
 int syntaxerrposition;


 syntaxerrposition = geterrposition();
 if (syntaxerrposition > 0)
 {
  errposition(0);
  internalerrposition(syntaxerrposition);
  internalerrquery(callback_arg->prosrc);
 }

 errcontext("SQL function \"%s\" during inlining", callback_arg->proname);
}
