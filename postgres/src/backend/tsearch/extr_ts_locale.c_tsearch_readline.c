
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* curline; int fp; int lineno; } ;
typedef TYPE_1__ tsearch_readline_state ;


 char* t_readline (int ) ;

char *
tsearch_readline(tsearch_readline_state *stp)
{
 char *result;

 stp->lineno++;
 stp->curline = ((void*)0);
 result = t_readline(stp->fp);
 stp->curline = result;
 return result;
}
