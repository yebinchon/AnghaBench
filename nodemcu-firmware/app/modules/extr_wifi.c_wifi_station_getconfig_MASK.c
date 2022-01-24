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
typedef  int /*<<< orphan*/  temp ;
struct station_config {scalar_t__ ssid; scalar_t__ password; int /*<<< orphan*/  bssid; int /*<<< orphan*/  bssid_set; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* MACSTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct station_config*) ; 
 int /*<<< orphan*/  FUNC14 (struct station_config*) ; 

__attribute__((used)) static int FUNC15( lua_State* L, bool get_flash_cfg)
{
  struct station_config sta_conf;
  char temp[sizeof(sta_conf.password)+1]; //max password length + '\0'

  if(get_flash_cfg)
  {
    FUNC14(&sta_conf);
  }
  else
  {
    FUNC13(&sta_conf);
  }

  if(sta_conf.ssid==0)
  {
    FUNC5(L);
      return 1;
  }
  else
  {
    if(FUNC1(L, 1) && FUNC8(L, 1)==true)
    {
      FUNC2(L);
      FUNC10(temp, 0, sizeof(temp));
      FUNC9(temp, sta_conf.ssid, sizeof(sta_conf.ssid));
      FUNC6(L, temp);
      FUNC7(L, -2, "ssid");

      if(FUNC12(sta_conf.password) > 0) /* WPA = min 8, WEP = min 5 ASCII characters for a 40-bit key */
      {
        FUNC10(temp, 0, sizeof(temp));
        FUNC9(temp, sta_conf.password, sizeof(sta_conf.password));
        FUNC6(L, temp);
        FUNC7(L, -2, "pwd");
      }

      FUNC3(L, sta_conf.bssid_set);
      FUNC7(L, -2, "bssid_set");

      FUNC10(temp, 0, sizeof(temp));
      FUNC11(temp, MACSTR, FUNC0(sta_conf.bssid));
      FUNC6( L, temp);
      FUNC7(L, -2, "bssid");

      return 1;
    }
    else
    {
      FUNC10(temp, 0, sizeof(temp));
      FUNC9(temp, sta_conf.ssid, sizeof(sta_conf.ssid));
      FUNC6(L, temp);
      FUNC10(temp, 0, sizeof(temp));
      FUNC9(temp, sta_conf.password, sizeof(sta_conf.password));
      FUNC6(L, temp);
      FUNC4( L, sta_conf.bssid_set);
      FUNC11(temp, MACSTR, FUNC0(sta_conf.bssid));
      FUNC6( L, temp);
      return 4;
    }
  }
}