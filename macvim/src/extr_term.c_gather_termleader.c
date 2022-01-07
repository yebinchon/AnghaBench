
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ in_use; } ;
struct TYPE_3__ {int * code; } ;


 int CSI ;
 int DCS ;
 int FALSE ;
 int NUL ;
 scalar_t__ check_for_codes ;
 TYPE_2__ gui ;
 int need_gather ;
 int tc_len ;
 TYPE_1__* termcodes ;
 int * termleader ;
 int * vim_strchr (int *,int ) ;

__attribute__((used)) static void
gather_termleader()
{
    int i;
    int len = 0;
    termleader[len] = NUL;

    for (i = 0; i < tc_len; ++i)
 if (vim_strchr(termleader, termcodes[i].code[0]) == ((void*)0))
 {
     termleader[len++] = termcodes[i].code[0];
     termleader[len] = NUL;
 }

    need_gather = FALSE;
}
