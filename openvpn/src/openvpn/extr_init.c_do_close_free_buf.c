
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffers_owned; int * buffers; } ;
struct context {TYPE_1__ c2; } ;


 int free_context_buffers (int *) ;

__attribute__((used)) static void
do_close_free_buf(struct context *c)
{
    if (c->c2.buffers_owned)
    {
        free_context_buffers(c->c2.buffers);
        c->c2.buffers = ((void*)0);
        c->c2.buffers_owned = 0;
    }
}
