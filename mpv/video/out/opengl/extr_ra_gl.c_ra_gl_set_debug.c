
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ra_gl {int debug_enable; } ;
struct ra {int * log; struct ra_gl* priv; } ;
struct TYPE_4__ {scalar_t__ debug_context; } ;
typedef TYPE_1__ GL ;


 int gl_set_debug_logger (TYPE_1__*,int *) ;
 TYPE_1__* ra_gl_get (struct ra*) ;

void ra_gl_set_debug(struct ra *ra, bool enable)
{
    struct ra_gl *p = ra->priv;
    GL *gl = ra_gl_get(ra);

    p->debug_enable = enable;
    if (gl->debug_context)
        gl_set_debug_logger(gl, enable ? ra->log : ((void*)0));
}
