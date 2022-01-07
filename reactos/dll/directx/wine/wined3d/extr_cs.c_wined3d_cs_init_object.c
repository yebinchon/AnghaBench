
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_cs {int dummy; } ;


 int wined3d_cs_emit_callback (struct wined3d_cs*,void (*) (void*),void*) ;

void wined3d_cs_init_object(struct wined3d_cs *cs, void (*callback)(void *object), void *object)
{
    wined3d_cs_emit_callback(cs, callback, object);
}
