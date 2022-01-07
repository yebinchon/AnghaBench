
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct station_config {int dummy; } ;
typedef scalar_t__ smart_succeed ;
typedef int smart_addr_map ;
typedef int os_timer_func_t ;


 int ADDR_MAP_NUM ;
 int NODE_DBG (char*) ;
 int NODE_ERR (char*,int) ;
 int PWD_BIT_MAX ;
 int PWD_NIBBLE_MAX ;
 int SSID_BIT_MAX ;
 int SSID_NIBBLE_MAX ;
 scalar_t__ STATIONAP_MODE ;
 scalar_t__ STATION_MODE ;
 int SWTIMER_REG_CB (scalar_t__,int ) ;
 int SWTIMER_RESUME ;
 int TIME_OUT_PER_CHANNEL ;
 scalar_t__ alldone ;
 int ** am ;
 scalar_t__ calloc (int,int) ;
 int cur_channel ;
 int detect ;
 int * got_password ;
 int * got_ssid ;
 scalar_t__ mode ;
 int os_timer_arm (int *,int ,int ) ;
 int os_timer_disarm (int *) ;
 int os_timer_setfn (int *,int *,int *) ;
 int * password_nibble ;
 int reset_map (int **,int) ;
 int smart_enable () ;
 int smart_end () ;
 scalar_t__ smart_next_channel ;
 void* smart_succeed_arg ;
 int smart_timer ;
 int * ssid_nibble ;
 struct station_config* sta_conf ;
 scalar_t__ succeed ;
 scalar_t__ wifi_get_opmode () ;
 int wifi_set_channel (int) ;
 int wifi_set_promiscuous_rx_cb (int ) ;
 int wifi_station_disconnect () ;
 int wifi_station_set_auto_connect (int) ;

void smart_begin(int chnl, smart_succeed s, void *arg){
  int i;
  alldone = 0;
  for (i = 0; i < ADDR_MAP_NUM; ++i)
  {
    if(!am[i]){
      am[i] = (smart_addr_map*)calloc(1,sizeof(smart_addr_map));
      if(!am[i]){
        NODE_DBG("smart_begin map no memory\n");
        smart_end();
        return;
      }
    }
  }
  if(!sta_conf){
    sta_conf = (struct station_config *)calloc(1,sizeof(struct station_config));
    if(!sta_conf){
      NODE_DBG("smart_begin sta_conf no memory\n");
      smart_end();
      return;
    }
  }

  if(!ssid_nibble){
    ssid_nibble = (uint8_t *)calloc(1,SSID_NIBBLE_MAX);
    if(!ssid_nibble){
      NODE_DBG("smart_begin sta_conf no memory\n");
      smart_end();
      return;
    }
  }

  if(!password_nibble){
    password_nibble = (uint8_t *)calloc(1,PWD_NIBBLE_MAX);
    if(!password_nibble){
      NODE_DBG("smart_begin sta_conf no memory\n");
      smart_end();
      return;
    }
  }

  if(!got_ssid){
    got_ssid = (uint8_t *)calloc(1,SSID_BIT_MAX);
    if(!got_ssid){
      NODE_DBG("smart_begin sta_conf no memory\n");
      smart_end();
      return;
    }
  }

  if(!got_password){
    got_password = (uint8_t *)calloc(1,PWD_BIT_MAX);
    if(!got_password){
      NODE_DBG("smart_begin sta_conf no memory\n");
      smart_end();
      return;
    }
  }
  reset_map(am, ADDR_MAP_NUM);
  mode = wifi_get_opmode();
  if( (STATION_MODE == mode) || (mode == STATIONAP_MODE) ){
    wifi_station_set_auto_connect(0);
    wifi_station_disconnect();
  }
  cur_channel = chnl;
  NODE_ERR("set channel to %d\n", cur_channel);
  wifi_set_channel(cur_channel);
  wifi_set_promiscuous_rx_cb(detect);
  os_timer_disarm(&smart_timer);
  os_timer_setfn(&smart_timer, (os_timer_func_t *)smart_next_channel, ((void*)0));
  SWTIMER_REG_CB(smart_next_channel, SWTIMER_RESUME);


  os_timer_arm(&smart_timer, TIME_OUT_PER_CHANNEL, 0);

  if(s){
    succeed = s;
    smart_succeed_arg = arg;
  }

  smart_enable();
}
