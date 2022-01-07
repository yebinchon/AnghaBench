
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filename; int lineno; scalar_t__ curline; } ;
typedef TYPE_1__ tsearch_readline_state ;


 int errcontext (char*,int ,int ,...) ;

__attribute__((used)) static void
tsearch_readline_callback(void *arg)
{
 tsearch_readline_state *stp = (tsearch_readline_state *) arg;
 if (stp->curline)
  errcontext("line %d of configuration file \"%s\": \"%s\"",
       stp->lineno,
       stp->filename,
       stp->curline);
 else
  errcontext("line %d of configuration file \"%s\"",
       stp->lineno,
       stp->filename);
}
