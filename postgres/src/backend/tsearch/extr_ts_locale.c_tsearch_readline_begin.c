
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* previous; void* arg; int callback; } ;
struct TYPE_4__ {char const* filename; TYPE_3__ cb; int * curline; scalar_t__ lineno; int * fp; } ;
typedef TYPE_1__ tsearch_readline_state ;


 int * AllocateFile (char const*,char*) ;
 TYPE_3__* error_context_stack ;
 int tsearch_readline_callback ;

bool
tsearch_readline_begin(tsearch_readline_state *stp,
        const char *filename)
{
 if ((stp->fp = AllocateFile(filename, "r")) == ((void*)0))
  return 0;
 stp->filename = filename;
 stp->lineno = 0;
 stp->curline = ((void*)0);

 stp->cb.callback = tsearch_readline_callback;
 stp->cb.arg = (void *) stp;
 stp->cb.previous = error_context_stack;
 error_context_stack = &stp->cb;
 return 1;
}
