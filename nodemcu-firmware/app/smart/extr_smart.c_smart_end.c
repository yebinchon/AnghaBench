
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_timer_func_t ;


 int ADDR_MAP_NUM ;
 scalar_t__ NULL_MODE ;
 scalar_t__ STATIONAP_MODE ;
 int STATION_CHECK_TIME ;
 scalar_t__ STATION_MODE ;
 int SWTIMER_REG_CB (scalar_t__,int ) ;
 int SWTIMER_RESUME ;
 scalar_t__ alldone ;
 int ** am ;
 int cur_channel ;
 int free (int *) ;
 int * got_password ;
 int * got_ssid ;
 int * matched ;
 scalar_t__ mode ;
 int os_timer_arm (int *,int ,int ) ;
 int os_timer_disarm (int *) ;
 int os_timer_setfn (int *,int *,void*) ;
 int * password_nibble ;
 int smart_disable () ;
 int smart_timer ;
 int * ssid_nibble ;
 int * sta_conf ;
 scalar_t__ station_check_connect ;
 scalar_t__ wifi_get_opmode () ;
 int wifi_set_channel (int ) ;
 int wifi_set_opmode (scalar_t__) ;
 int wifi_station_connect () ;
 int wifi_station_disconnect () ;
 int wifi_station_set_auto_connect (int) ;
 int wifi_station_set_config (int *) ;

void smart_end(){
  int i;
  os_timer_disarm(&smart_timer);
  smart_disable();
  wifi_set_channel(cur_channel);

  if(NULL_MODE != mode){
    wifi_set_opmode(mode);
  } else {
    wifi_set_opmode(STATION_MODE);
  }

  mode = wifi_get_opmode();

  if(sta_conf && alldone){
    if( (STATION_MODE == mode) || (mode == STATIONAP_MODE) ){
      wifi_station_set_config(sta_conf);
      wifi_station_set_auto_connect(1);
      wifi_station_disconnect();
      wifi_station_connect();

      os_timer_disarm(&smart_timer);
      os_timer_setfn(&smart_timer, (os_timer_func_t *)station_check_connect, (void *)1);
      SWTIMER_REG_CB(station_check_connect, SWTIMER_RESUME);


      os_timer_arm(&smart_timer, STATION_CHECK_TIME, 0);
    }
  }

  for (i = 0; i < ADDR_MAP_NUM; ++i)
  {
    if(am[i]){
      free(am[i]);
      am[i] = ((void*)0);
    }
    matched = ((void*)0);
  }

  if(sta_conf){
    free(sta_conf);
    sta_conf = ((void*)0);
  }

  if(got_password){
    free(got_password);
    got_password = ((void*)0);
  }

  if(got_ssid){
    free(got_ssid);
    got_ssid = ((void*)0);
  }

  if(password_nibble){
    free(password_nibble);
    password_nibble = ((void*)0);
  }

  if(ssid_nibble){
    free(ssid_nibble);
    ssid_nibble = ((void*)0);
  }

}
