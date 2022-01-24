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
typedef  int /*<<< orphan*/  os_timer_func_t ;

/* Variables and functions */
 int ADDR_MAP_NUM ; 
 scalar_t__ NULL_MODE ; 
 scalar_t__ STATIONAP_MODE ; 
 int /*<<< orphan*/  STATION_CHECK_TIME ; 
 scalar_t__ STATION_MODE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWTIMER_RESUME ; 
 scalar_t__ alldone ; 
 int /*<<< orphan*/ ** am ; 
 int /*<<< orphan*/  cur_channel ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * got_password ; 
 int /*<<< orphan*/ * got_ssid ; 
 int /*<<< orphan*/ * matched ; 
 scalar_t__ mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * password_nibble ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  smart_timer ; 
 int /*<<< orphan*/ * ssid_nibble ; 
 int /*<<< orphan*/ * sta_conf ; 
 scalar_t__ station_check_connect ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(){
  int i;
  FUNC3(&smart_timer);
  FUNC5();
  FUNC7(cur_channel);

  if(NULL_MODE != mode){
    FUNC8(mode);
  } else {
    FUNC8(STATION_MODE);
  }

  mode = FUNC6();

  if(sta_conf && alldone){
    if( (STATION_MODE == mode) || (mode == STATIONAP_MODE) ){
      FUNC12(sta_conf);
      FUNC11(true);
      FUNC10();
      FUNC9();

      FUNC3(&smart_timer);
      FUNC4(&smart_timer, (os_timer_func_t *)station_check_connect, (void *)1);
      FUNC0(station_check_connect, SWTIMER_RESUME);
        //the function station_check_connect continues the Smart config process and fires the developers callback upon successful connection to the access point.
        //If this function manages to get suspended, I think it would be fine to resume the timer.
      FUNC2(&smart_timer, STATION_CHECK_TIME, 0);   // no repeat
    }
  }

  for (i = 0; i < ADDR_MAP_NUM; ++i)
  {
    if(am[i]){
      FUNC1(am[i]);
      am[i] = NULL;
    }
    matched = NULL;
  }

  if(sta_conf){
    FUNC1(sta_conf);
    sta_conf = NULL;
  }

  if(got_password){
    FUNC1(got_password);
    got_password = NULL;
  }

  if(got_ssid){
    FUNC1(got_ssid);
    got_ssid = NULL;
  }

  if(password_nibble){
    FUNC1(password_nibble);
    password_nibble = NULL;
  }

  if(ssid_nibble){
    FUNC1(ssid_nibble);
    ssid_nibble = NULL;
  }
  // system_restart();   // restart to enable the mode
}