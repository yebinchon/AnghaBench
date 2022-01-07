
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_timer {void** queries; } ;
typedef struct gs_timer gs_timer_t ;
typedef int gs_device_t ;
typedef void* GLuint ;


 int UNUSED_PARAMETER (int *) ;
 struct gs_timer* bzalloc (int) ;
 int glGenQueries (int,void**) ;
 int gl_success (char*) ;

gs_timer_t *device_timer_create(gs_device_t *device)
{
 UNUSED_PARAMETER(device);

 struct gs_timer *timer;

 GLuint queries[2];
 glGenQueries(2, queries);
 if (!gl_success("glGenQueries"))
  return ((void*)0);

 timer = bzalloc(sizeof(struct gs_timer));
 timer->queries[0] = queries[0];
 timer->queries[1] = queries[1];

 return timer;
}
