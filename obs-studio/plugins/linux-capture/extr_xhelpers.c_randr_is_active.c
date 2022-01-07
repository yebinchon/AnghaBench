
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xcb_connection_t ;
struct TYPE_2__ {int present; } ;


 TYPE_1__* xcb_get_extension_data (int *,int *) ;
 int xcb_randr_id ;

bool randr_is_active(xcb_connection_t *xcb)
{
 if (!xcb || !xcb_get_extension_data(xcb, &xcb_randr_id)->present)
  return 0;

 return 1;
}
