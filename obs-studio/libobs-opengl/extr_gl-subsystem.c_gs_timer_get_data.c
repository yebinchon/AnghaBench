
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int * queries; } ;
typedef TYPE_1__ gs_timer_t ;
typedef scalar_t__ GLuint64 ;
typedef int GLint ;


 int GL_QUERY_RESULT ;
 int GL_QUERY_RESULT_AVAILABLE ;
 int glGetQueryObjectiv (int ,int ,int *) ;
 int glGetQueryObjectui64v (int ,int ,scalar_t__*) ;
 int gl_success (char*) ;

bool gs_timer_get_data(gs_timer_t *timer, uint64_t *ticks)
{
 GLint available = 0;
 glGetQueryObjectiv(timer->queries[1], GL_QUERY_RESULT_AVAILABLE,
      &available);

 GLuint64 begin, end;
 glGetQueryObjectui64v(timer->queries[0], GL_QUERY_RESULT, &begin);
 gl_success("glGetQueryObjectui64v");
 glGetQueryObjectui64v(timer->queries[1], GL_QUERY_RESULT, &end);
 gl_success("glGetQueryObjectui64v");

 *ticks = end - begin;
 return 1;
}
