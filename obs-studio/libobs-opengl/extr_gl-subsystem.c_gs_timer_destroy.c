
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int queries; } ;
typedef TYPE_1__ gs_timer_t ;


 int bfree (TYPE_1__*) ;
 int glDeleteQueries (int,int ) ;
 int gl_success (char*) ;

void gs_timer_destroy(gs_timer_t *timer)
{
 if (!timer)
  return;

 glDeleteQueries(2, timer->queries);
 gl_success("glDeleteQueries");

 bfree(timer);
}
