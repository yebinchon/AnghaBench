
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frontend_save_callback ;
 int obs_frontend_add_save_callback (int ,void*) ;

__attribute__((used)) static void add_save_callback_defer(void *cb)
{
 obs_frontend_add_save_callback(frontend_save_callback, cb);
}
