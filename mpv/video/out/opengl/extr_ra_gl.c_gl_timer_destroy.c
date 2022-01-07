
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra {int dummy; } ;
struct gl_timer {int query; } ;
typedef struct gl_timer ra_timer ;
struct TYPE_3__ {int (* DeleteQueries ) (int ,int ) ;} ;
typedef TYPE_1__ GL ;


 int GL_QUERY_OBJECT_NUM ;
 TYPE_1__* ra_gl_get (struct ra*) ;
 int stub1 (int ,int ) ;
 int talloc_free (struct gl_timer*) ;

__attribute__((used)) static void gl_timer_destroy(struct ra *ra, ra_timer *ratimer)
{
    if (!ratimer)
        return;

    GL *gl = ra_gl_get(ra);
    struct gl_timer *timer = ratimer;

    gl->DeleteQueries(GL_QUERY_OBJECT_NUM, timer->query);
    talloc_free(timer);
}
