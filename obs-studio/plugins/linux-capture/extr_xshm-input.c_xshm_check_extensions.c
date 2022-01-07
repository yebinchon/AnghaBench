
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xcb_connection_t ;
struct TYPE_2__ {int present; } ;


 int LOG_ERROR ;
 int LOG_INFO ;
 int blog (int ,char*) ;
 TYPE_1__* xcb_get_extension_data (int *,int *) ;
 int xcb_randr_id ;
 int xcb_shm_id ;
 int xcb_xinerama_id ;

__attribute__((used)) static bool xshm_check_extensions(xcb_connection_t *xcb)
{
 bool ok = 1;

 if (!xcb_get_extension_data(xcb, &xcb_shm_id)->present) {
  blog(LOG_ERROR, "Missing SHM extension !");
  ok = 0;
 }

 if (!xcb_get_extension_data(xcb, &xcb_xinerama_id)->present)
  blog(LOG_INFO, "Missing Xinerama extension !");

 if (!xcb_get_extension_data(xcb, &xcb_randr_id)->present)
  blog(LOG_INFO, "Missing Randr extension !");

 return ok;
}
