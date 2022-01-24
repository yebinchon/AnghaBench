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
typedef  int uint8_t ;
struct nodemcu_mdns_info {char* service_name; int service_port; char** txt_data; void* host_desc; void* host_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct ip_info {TYPE_1__ ip; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TSTRING ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  SOFTAP_IF ; 
 int /*<<< orphan*/  STATION_IF ; 
 char* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct nodemcu_mdns_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nodemcu_mdns_info*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 int FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct ip_info*) ; 
 int FUNC17 () ; 

__attribute__((used)) static int FUNC18(lua_State *L)
{
  struct nodemcu_mdns_info info;

  FUNC10(&info, 0, sizeof(info));

  info.host_name = FUNC2(L, 1);
  info.service_name = "http";
  info.service_port = 80;
  info.host_desc = info.host_name;

  if (FUNC5(L) >= 2) {
    FUNC3(L, 2, LUA_TTABLE);
    FUNC8(L); // first key
    int slot = 0;
    while (FUNC6(L, 2) != 0 && slot < sizeof(info.txt_data) / sizeof(info.txt_data[0])) {
      FUNC3(L, -2, LUA_TSTRING);
      const char *key = FUNC2(L, -2);

      if (FUNC13(key, "port") == 0) {
	info.service_port = FUNC1(L, -1);
      } else if (FUNC13(key, "service") == 0) {
	info.service_name = FUNC2(L, -1);
      } else if (FUNC13(key, "description") == 0) {
	info.host_desc = FUNC2(L, -1);
      } else {
	int len = FUNC15(key) + 1;
	const char *value = FUNC2(L, -1);
	char *p = FUNC0(len + FUNC15(value) + 1);
	FUNC14(p, key);
	FUNC12(p, "=");
	FUNC12(p, value);
	info.txt_data[slot++] = p;
      }
      FUNC7(L, 1);
    }
  }


  struct ip_info ipconfig;

  uint8_t mode = FUNC17();

  if (!FUNC16((mode == 2) ? SOFTAP_IF : STATION_IF, &ipconfig) || !ipconfig.ip.addr) {
    return FUNC4(L, "No network connection");
  }

  // Close up the old session (if any). This cannot fail
  // so no chance of losing the memory in 'result'

  FUNC9(L);

  // Save the result as it appears that nodemcu_mdns_init needs
  // to have the data valid while it is running.

  if (!FUNC11(&info)) {
    FUNC9(L);
    return FUNC4(L, "Unable to start mDns daemon");
  }

  return 0;
}