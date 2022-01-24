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
typedef  int uint8 ;
typedef  int /*<<< orphan*/  temp ;
struct station_config {char* ssid; char* password; int /*<<< orphan*/  bssid; scalar_t__ bssid_set; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* MACSTR ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 
 int FUNC11 (char*) ; 
 int FUNC12 (struct station_config*) ; 

__attribute__((used)) static int FUNC13( lua_State* L )
{
  struct station_config config[5];
  char temp[sizeof(config[0].password)+1]; //max password length + '\0'
  uint8 number_of_aps = FUNC12(config);

#if defined(WIFI_DEBUG)
  char debug_temp[128];
#endif
  FUNC3(L);
  FUNC4(L, number_of_aps);
  FUNC6(L, -2, "qty");
  FUNC1("\n\t# of APs stored in flash:%d\n", number_of_aps);
  FUNC1(" %-6s %-32s %-64s %-17s\n", "index:", "ssid:", "password:", "bssid:");

  for(int i=0;i<number_of_aps;i++)
  {
    FUNC3(L);

    FUNC9(temp, 0, sizeof(temp));
    FUNC8(temp, config[i].ssid, sizeof(config[i].ssid));
    FUNC5(L, temp);
    FUNC6(L, -2, "ssid");
#if defined(WIFI_DEBUG)
    sprintf(debug_temp, " %-6d %-32s ", i, temp);
#endif

    FUNC9(temp, 0, sizeof(temp));
    if(FUNC11(config[i].password) > 0) /* WPA = min 8, WEP = min 5 ASCII characters for a 40-bit key */
    {
      FUNC8(temp, config[i].password, sizeof(config[i].password));
      FUNC5(L, temp);
      FUNC6(L, -2, "pwd");
    }
#if defined(WIFI_DEBUG)
    sprintf(debug_temp + strlen(debug_temp), "%-64s ", temp);
#endif

    FUNC9(temp, 0, sizeof(temp));
    if (config[i].bssid_set)
    {
      FUNC10(temp, MACSTR, FUNC0(config[i].bssid));
      FUNC5(L, temp);
      FUNC6(L, -2, "bssid");
    }

#if defined(WIFI_DEBUG)
    WIFI_DBG("%s%-17s \n", debug_temp, temp);
#endif
    FUNC4(L, i+1); //Add one, so that AP index follows Lua Conventions
    FUNC2(L, -2);
    FUNC7(L, -3);
  }
  return 1;
}