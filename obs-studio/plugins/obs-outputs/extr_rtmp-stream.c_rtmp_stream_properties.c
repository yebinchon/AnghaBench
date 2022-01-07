
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netif_saddr_item {char* addr; int name; } ;
struct TYPE_2__ {size_t num; struct netif_saddr_item* array; } ;
struct netif_saddr_data {TYPE_1__ addrs; int member_0; } ;
typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int OPT_BIND_IP ;
 int OPT_DROP_THRESHOLD ;
 int OPT_LOWLATENCY_ENABLED ;
 int OPT_NEWSOCKETLOOP_ENABLED ;
 int UNUSED_PARAMETER (void*) ;
 int netif_get_addrs (struct netif_saddr_data*) ;
 int netif_saddr_data_free (struct netif_saddr_data*) ;
 int obs_module_text (char*) ;
 int obs_properties_add_bool (int *,int ,int ) ;
 int obs_properties_add_int (int *,int ,int ,int,int,int) ;
 int * obs_properties_add_list (int *,int ,int ,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_list_add_string (int *,int ,char*) ;

__attribute__((used)) static obs_properties_t *rtmp_stream_properties(void *unused)
{
 UNUSED_PARAMETER(unused);

 obs_properties_t *props = obs_properties_create();
 struct netif_saddr_data addrs = {0};
 obs_property_t *p;

 obs_properties_add_int(props, OPT_DROP_THRESHOLD,
          obs_module_text("RTMPStream.DropThreshold"), 200,
          10000, 100);

 p = obs_properties_add_list(props, OPT_BIND_IP,
        obs_module_text("RTMPStream.BindIP"),
        OBS_COMBO_TYPE_LIST,
        OBS_COMBO_FORMAT_STRING);

 obs_property_list_add_string(p, obs_module_text("Default"), "default");

 netif_get_addrs(&addrs);
 for (size_t i = 0; i < addrs.addrs.num; i++) {
  struct netif_saddr_item item = addrs.addrs.array[i];
  obs_property_list_add_string(p, item.name, item.addr);
 }
 netif_saddr_data_free(&addrs);

 obs_properties_add_bool(props, OPT_NEWSOCKETLOOP_ENABLED,
    obs_module_text("RTMPStream.NewSocketLoop"));
 obs_properties_add_bool(props, OPT_LOWLATENCY_ENABLED,
    obs_module_text("RTMPStream.LowLatencyMode"));

 return props;
}
