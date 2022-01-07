
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ arg; } ;
typedef TYPE_1__ exarg_T ;


 int msg_clr_cmdline () ;
 int workshop_perform_verb (char*,int *) ;

void
ex_wsverb(exarg_T *eap)
{
    msg_clr_cmdline();
    workshop_perform_verb((char *) eap->arg, ((void*)0));
}
