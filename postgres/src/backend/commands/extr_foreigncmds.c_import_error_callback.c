
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tablename; int cmd; } ;
typedef TYPE_1__ import_error_callback_arg ;


 int errcontext (char*,scalar_t__) ;
 int errposition (int ) ;
 int geterrposition () ;
 int internalerrposition (int) ;
 int internalerrquery (int ) ;

__attribute__((used)) static void
import_error_callback(void *arg)
{
 import_error_callback_arg *callback_arg = (import_error_callback_arg *) arg;
 int syntaxerrposition;


 syntaxerrposition = geterrposition();
 if (syntaxerrposition > 0)
 {
  errposition(0);
  internalerrposition(syntaxerrposition);
  internalerrquery(callback_arg->cmd);
 }

 if (callback_arg->tablename)
  errcontext("importing foreign table \"%s\"",
       callback_arg->tablename);
}
