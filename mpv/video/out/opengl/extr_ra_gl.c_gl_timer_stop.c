
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ra_gl {int timer_active; TYPE_1__* gl; } ;
struct ra {struct ra_gl* priv; } ;
struct gl_timer {int active; int result; } ;
typedef struct gl_timer ra_timer ;
struct TYPE_2__ {int (* EndQuery ) (int ) ;} ;
typedef TYPE_1__ GL ;


 int GL_TIME_ELAPSED ;
 int stub1 (int ) ;

__attribute__((used)) static uint64_t gl_timer_stop(struct ra *ra, ra_timer *ratimer)
{
    struct ra_gl *p = ra->priv;
    GL *gl = p->gl;
    struct gl_timer *timer = ratimer;

    if (!timer->active)
        return 0;

    gl->EndQuery(GL_TIME_ELAPSED);
    p->timer_active = timer->active = 0;

    return timer->result;
}
