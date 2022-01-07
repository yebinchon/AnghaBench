
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ arg; int skip; } ;
typedef TYPE_1__ exarg_T ;


 scalar_t__ ensure_ruby_initialized () ;
 int error_print (int) ;
 int rb_eval_string_protect (char*,int*) ;
 scalar_t__ script_get (TYPE_1__*,scalar_t__) ;
 int vim_free (char*) ;

void ex_ruby(exarg_T *eap)
{
    int state;
    char *script = ((void*)0);

    script = (char *)script_get(eap, eap->arg);
    if (!eap->skip && ensure_ruby_initialized())
    {
 if (script == ((void*)0))
     rb_eval_string_protect((char *)eap->arg, &state);
 else
     rb_eval_string_protect(script, &state);
 if (state)
     error_print(state);
    }
    vim_free(script);
}
