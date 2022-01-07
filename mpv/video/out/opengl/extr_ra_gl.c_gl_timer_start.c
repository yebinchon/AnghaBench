
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_gl {int timer_active; TYPE_1__* gl; } ;
struct ra {struct ra_gl* priv; } ;
struct gl_timer {size_t idx; int active; int * query; scalar_t__ result; } ;
typedef struct gl_timer ra_timer ;
struct TYPE_2__ {int (* BeginQuery ) (int ,int ) ;int (* GetQueryObjectui64v ) (int ,int ,scalar_t__*) ;scalar_t__ (* IsQuery ) (int ) ;} ;
typedef TYPE_1__ GL ;


 size_t GL_QUERY_OBJECT_NUM ;
 int GL_QUERY_RESULT ;
 int GL_TIME_ELAPSED ;
 scalar_t__ stub1 (int ) ;
 int stub2 (int ,int ,scalar_t__*) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static void gl_timer_start(struct ra *ra, ra_timer *ratimer)
{
    struct ra_gl *p = ra->priv;
    GL *gl = p->gl;
    struct gl_timer *timer = ratimer;



    if (p->timer_active)
        return;


    timer->result = 0;
    if (gl->IsQuery(timer->query[timer->idx])) {
        gl->GetQueryObjectui64v(timer->query[timer->idx], GL_QUERY_RESULT,
                                &timer->result);
    }

    gl->BeginQuery(GL_TIME_ELAPSED, timer->query[timer->idx++]);
    timer->idx %= GL_QUERY_OBJECT_NUM;

    p->timer_active = timer->active = 1;
}
