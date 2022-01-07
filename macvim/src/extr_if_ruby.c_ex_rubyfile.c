
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ arg; } ;
typedef TYPE_1__ exarg_T ;


 scalar_t__ ensure_ruby_initialized () ;
 int error_print (int) ;
 int rb_load_protect (int ,int ,int*) ;
 int rb_str_new2 (char*) ;

void ex_rubyfile(exarg_T *eap)
{
    int state;

    if (ensure_ruby_initialized())
    {
 rb_load_protect(rb_str_new2((char *) eap->arg), 0, &state);
 if (state) error_print(state);
    }
}
