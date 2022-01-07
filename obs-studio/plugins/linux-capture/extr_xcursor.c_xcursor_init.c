
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * dpy; } ;
typedef TYPE_1__ xcursor_t ;
typedef int Display ;


 TYPE_1__* bzalloc (int) ;
 int xcursor_tick (TYPE_1__*) ;

xcursor_t *xcursor_init(Display *dpy)
{
 xcursor_t *data = bzalloc(sizeof(xcursor_t));

 data->dpy = dpy;
 xcursor_tick(data);

 return data;
}
