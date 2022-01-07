
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * arg; int * cmd; int cmdidx; } ;
typedef TYPE_1__ exarg_T ;
typedef int ea ;
typedef int char_u ;


 int CMD_tabnew ;
 int ex_splitview (TYPE_1__*) ;
 int vim_memset (TYPE_1__*,int ,int) ;

void
tabpage_new()
{
    exarg_T ea;

    vim_memset(&ea, 0, sizeof(ea));
    ea.cmdidx = CMD_tabnew;
    ea.cmd = (char_u *)"tabn";
    ea.arg = (char_u *)"";
    ex_splitview(&ea);
}
