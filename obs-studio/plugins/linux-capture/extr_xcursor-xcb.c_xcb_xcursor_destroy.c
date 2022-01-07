
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tex; } ;
typedef TYPE_1__ xcb_xcursor_t ;


 int bfree (TYPE_1__*) ;
 int gs_texture_destroy (scalar_t__) ;

void xcb_xcursor_destroy(xcb_xcursor_t *data)
{
 if (data->tex)
  gs_texture_destroy(data->tex);
 bfree(data);
}
