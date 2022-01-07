
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int obs_data_t ;
struct TYPE_4__ {int server; void* advanced; void* show_cursor; int screen_id; } ;


 int XSHM_DATA (void*) ;
 int bstrdup (int ) ;
 TYPE_1__* data ;
 void* obs_data_get_bool (int *,char*) ;
 int obs_data_get_int (int *,char*) ;
 int obs_data_get_string (int *,char*) ;
 int xshm_capture_start (TYPE_1__*) ;
 int xshm_capture_stop (TYPE_1__*) ;

__attribute__((used)) static void xshm_update(void *vptr, obs_data_t *settings)
{
 XSHM_DATA(vptr);

 xshm_capture_stop(data);

 data->screen_id = obs_data_get_int(settings, "screen");
 data->show_cursor = obs_data_get_bool(settings, "show_cursor");
 data->advanced = obs_data_get_bool(settings, "advanced");
 data->server = bstrdup(obs_data_get_string(settings, "server"));

 xshm_capture_start(data);
}
