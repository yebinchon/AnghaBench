#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct station_config {int dummy; } ;
typedef  scalar_t__ smart_succeed ;
typedef  int /*<<< orphan*/  smart_addr_map ;
typedef  int /*<<< orphan*/  os_timer_func_t ;

/* Variables and functions */
 int ADDR_MAP_NUM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int PWD_BIT_MAX ; 
 int PWD_NIBBLE_MAX ; 
 int SSID_BIT_MAX ; 
 int SSID_NIBBLE_MAX ; 
 scalar_t__ STATIONAP_MODE ; 
 scalar_t__ STATION_MODE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWTIMER_RESUME ; 
 int /*<<< orphan*/  TIME_OUT_PER_CHANNEL ; 
 scalar_t__ alldone ; 
 int /*<<< orphan*/ ** am ; 
 scalar_t__ FUNC3 (int,int) ; 
 int cur_channel ; 
 int /*<<< orphan*/  detect ; 
 int /*<<< orphan*/ * got_password ; 
 int /*<<< orphan*/ * got_ssid ; 
 scalar_t__ mode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * password_nibble ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ smart_next_channel ; 
 void* smart_succeed_arg ; 
 int /*<<< orphan*/  smart_timer ; 
 int /*<<< orphan*/ * ssid_nibble ; 
 struct station_config* sta_conf ; 
 scalar_t__ succeed ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

void FUNC15(int chnl, smart_succeed s, void *arg){
  int i;
  alldone = 0;
  for (i = 0; i < ADDR_MAP_NUM; ++i)
  {
    if(!am[i]){
      am[i] = (smart_addr_map*)FUNC3(1,sizeof(smart_addr_map));
      if(!am[i]){
        FUNC0("smart_begin map no memory\n");
        FUNC9();
        return;
      }
    }
  }
  if(!sta_conf){
    sta_conf = (struct station_config *)FUNC3(1,sizeof(struct station_config));
    if(!sta_conf){
      FUNC0("smart_begin sta_conf no memory\n");
      FUNC9();
      return;
    }
  }

  if(!ssid_nibble){
    ssid_nibble = (uint8_t *)FUNC3(1,SSID_NIBBLE_MAX);
    if(!ssid_nibble){
      FUNC0("smart_begin sta_conf no memory\n");
      FUNC9();
      return;
    }
  }

  if(!password_nibble){
    password_nibble = (uint8_t *)FUNC3(1,PWD_NIBBLE_MAX);
    if(!password_nibble){
      FUNC0("smart_begin sta_conf no memory\n");
      FUNC9();
      return;
    }
  }

  if(!got_ssid){
    got_ssid = (uint8_t *)FUNC3(1,SSID_BIT_MAX);
    if(!got_ssid){
      FUNC0("smart_begin sta_conf no memory\n");
      FUNC9();
      return;
    }
  }

  if(!got_password){
    got_password = (uint8_t *)FUNC3(1,PWD_BIT_MAX);
    if(!got_password){
      FUNC0("smart_begin sta_conf no memory\n");
      FUNC9();
      return;
    }
  }
  FUNC7(am, ADDR_MAP_NUM);
  // memset(sta_conf->ssid, 0, sizeof(sta_conf->ssid));
  // memset(sta_conf->password, 0, sizeof(sta_conf->password));

  // memset(got_ssid, 0, SSID_BIT_MAX);
  // memset(got_password, 0, PWD_BIT_MAX);

  // memset(ssid_nibble, 0, SSID_NIBBLE_MAX);
  // memset(password_nibble, 0, PWD_NIBBLE_MAX);
  mode = FUNC10();
  if( (STATION_MODE == mode) || (mode == STATIONAP_MODE) ){
    FUNC14(false);
    FUNC13();
  }
  cur_channel = chnl;
  FUNC1("set channel to %d\n", cur_channel);
  FUNC11(cur_channel);
  FUNC12(detect);
  FUNC5(&smart_timer);
  FUNC6(&smart_timer, (os_timer_func_t *)smart_next_channel, NULL);
  FUNC2(smart_next_channel, SWTIMER_RESUME);
    //smart_next_channel switches the wifi channel
    //I don't see a problem with resuming this timer
  FUNC4(&smart_timer, TIME_OUT_PER_CHANNEL, 0);   // no repeat

  if(s){
    succeed = s;    // init the succeed call back
    smart_succeed_arg = arg;
  }

  FUNC8();
}