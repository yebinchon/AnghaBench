
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frontend_event_callback ;
 int obs_frontend_add_event_callback (int ,void*) ;

__attribute__((used)) static void add_event_callback_defer(void *cb)
{
 obs_frontend_add_event_callback(frontend_event_callback, cb);
}
