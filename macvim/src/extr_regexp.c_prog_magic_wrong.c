
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * engine; } ;
typedef TYPE_1__ regprog_T ;
struct TYPE_6__ {int program; } ;
typedef TYPE_2__ bt_regprog_T ;
struct TYPE_8__ {TYPE_1__* regprog; } ;
struct TYPE_7__ {TYPE_1__* regprog; } ;


 int EMSG (int ) ;
 int FALSE ;
 scalar_t__ REGMAGIC ;
 scalar_t__ REG_MULTI ;
 int TRUE ;
 scalar_t__ UCHARAT (int ) ;
 int _ (int ) ;
 int e_re_corr ;
 int nfa_regengine ;
 TYPE_4__* reg_match ;
 TYPE_3__* reg_mmatch ;

__attribute__((used)) static int
prog_magic_wrong()
{
    regprog_T *prog;

    prog = REG_MULTI ? reg_mmatch->regprog : reg_match->regprog;
    if (prog->engine == &nfa_regengine)

 return FALSE;

    if (UCHARAT(((bt_regprog_T *)prog)->program) != REGMAGIC)
    {
 EMSG(_(e_re_corr));
 return TRUE;
    }
    return FALSE;
}
