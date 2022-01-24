#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  password; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_MAP_NUM ; 
#define  MAX_CHANNEL 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int PWD_BIT_MAX ; 
 int PWD_NIBBLE_MAX ; 
 int SSID_BIT_MAX ; 
 int SSID_NIBBLE_MAX ; 
 int /*<<< orphan*/  TIME_OUT_PER_CHANNEL ; 
 int /*<<< orphan*/  am ; 
 int cur_channel ; 
 int /*<<< orphan*/  got_password ; 
 int /*<<< orphan*/  got_ssid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  password_nibble ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  smart_timer ; 
 int /*<<< orphan*/  ssid_nibble ; 
 TYPE_1__* sta_conf ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(){
  FUNC5();
  switch(cur_channel){
    case 1:
      cur_channel = MAX_CHANNEL;
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
    case MAX_CHANNEL:
      cur_channel = 2;
      break;
    default:
      cur_channel = 6;
      break;
  }

  FUNC0("switch to channel %d\n", cur_channel);
  FUNC7(cur_channel);
  FUNC4(am, ADDR_MAP_NUM);
  FUNC1(sta_conf->ssid, 0, sizeof(sta_conf->ssid));
  FUNC1(sta_conf->password, 0, sizeof(sta_conf->password));

  FUNC1(got_ssid, 0, SSID_BIT_MAX);
  FUNC1(got_password, 0, PWD_BIT_MAX);

  FUNC1(ssid_nibble, 0, SSID_NIBBLE_MAX);
  FUNC1(password_nibble, 0, PWD_NIBBLE_MAX);

  FUNC3(&smart_timer);
  FUNC2(&smart_timer, TIME_OUT_PER_CHANNEL, 0);   // no repeat

  FUNC6();
}