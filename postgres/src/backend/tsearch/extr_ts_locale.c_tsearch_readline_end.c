
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int previous; } ;
struct TYPE_5__ {TYPE_1__ cb; int fp; } ;
typedef TYPE_2__ tsearch_readline_state ;


 int FreeFile (int ) ;
 int error_context_stack ;

void
tsearch_readline_end(tsearch_readline_state *stp)
{
 FreeFile(stp->fp);

 error_context_stack = stp->cb.previous;
}
