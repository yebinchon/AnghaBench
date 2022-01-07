
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int password; int ssid; } ;


 int ADDR_MAP_NUM ;

 int NODE_ERR (char*,int) ;
 int PWD_BIT_MAX ;
 int PWD_NIBBLE_MAX ;
 int SSID_BIT_MAX ;
 int SSID_NIBBLE_MAX ;
 int TIME_OUT_PER_CHANNEL ;
 int am ;
 int cur_channel ;
 int got_password ;
 int got_ssid ;
 int memset (int ,int ,int) ;
 int os_timer_arm (int *,int ,int ) ;
 int os_timer_disarm (int *) ;
 int password_nibble ;
 int reset_map (int ,int ) ;
 int smart_disable () ;
 int smart_enable () ;
 int smart_timer ;
 int ssid_nibble ;
 TYPE_1__* sta_conf ;
 int wifi_set_channel (int) ;

void smart_next_channel(){
  smart_disable();
  switch(cur_channel){
    case 1:
      cur_channel = 128;
      break;
    case 2:
    case 3:
    case 4:
      cur_channel++;
      break;
    case 5:
      cur_channel = 7;
      break;
    case 6:
      cur_channel = 1;
      break;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
      cur_channel++;
      break;
    case 13:
      cur_channel = 6;
      break;
    case 128:
      cur_channel = 2;
      break;
    default:
      cur_channel = 6;
      break;
  }

  NODE_ERR("switch to channel %d\n", cur_channel);
  wifi_set_channel(cur_channel);
  reset_map(am, ADDR_MAP_NUM);
  memset(sta_conf->ssid, 0, sizeof(sta_conf->ssid));
  memset(sta_conf->password, 0, sizeof(sta_conf->password));

  memset(got_ssid, 0, SSID_BIT_MAX);
  memset(got_password, 0, PWD_BIT_MAX);

  memset(ssid_nibble, 0, SSID_NIBBLE_MAX);
  memset(password_nibble, 0, PWD_NIBBLE_MAX);

  os_timer_disarm(&smart_timer);
  os_timer_arm(&smart_timer, TIME_OUT_PER_CHANNEL, 0);

  smart_enable();
}
