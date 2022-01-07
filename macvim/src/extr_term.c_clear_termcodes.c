
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* code; } ;


 char* BC ;
 int NUL ;
 int PC ;
 int TRUE ;
 char* UP ;
 scalar_t__ empty_option ;
 int need_gather ;
 scalar_t__ ospeed ;
 size_t tc_len ;
 scalar_t__ tc_max_len ;
 TYPE_1__* termcodes ;
 int vim_free (TYPE_1__*) ;

void
clear_termcodes()
{
    while (tc_len > 0)
 vim_free(termcodes[--tc_len].code);
    vim_free(termcodes);
    termcodes = ((void*)0);
    tc_max_len = 0;
    need_gather = TRUE;
}
