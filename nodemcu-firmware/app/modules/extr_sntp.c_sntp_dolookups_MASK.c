#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ err_t ;
struct TYPE_3__ {scalar_t__ list_ref; int lookup_pos; } ;

/* Variables and functions */
 scalar_t__ ERR_ARG ; 
 scalar_t__ ERR_INPROGRESS ; 
 scalar_t__ LUA_NOREF ; 
 scalar_t__ LUA_REFNIL ; 
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NTP_DNS_ERR ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ server_count ; 
 int /*<<< orphan*/  sntp_dns_found ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__* state ; 

__attribute__((used)) static void FUNC8 (lua_State *L) {
  // Step through each element of the table, converting it to an address
  // at the end, start the lookups. If we have already looked everything up,
  // then move straight to sending the packets.
  if ((state->list_ref == LUA_NOREF) || (state->list_ref == LUA_REFNIL)) {
    FUNC7();
    return;
  }

  FUNC6(L, LUA_REGISTRYINDEX, state->list_ref);
  while (1) {
    int l;

    if (FUNC4(L, -1) <= state->lookup_pos) {
      // We reached the end
      if (server_count == 0) {
        // Oh dear -- no valid entries -- generate an error
        // This means that all the arguments are invalid. Just pick the first
        FUNC6(L, -1, 1);
        const char *hostname = FUNC3(L, -1, &l);
        FUNC2(L, NTP_DNS_ERR, hostname);
        FUNC5(L, 1);
      } else {
        FUNC7();
      }
      break;
    }

    state->lookup_pos++;

    FUNC6(L, -1, state->lookup_pos);

    const char *hostname = FUNC3(L, -1, &l);
    FUNC5(L, 1);

    if (l>128 || hostname == NULL) {
      FUNC2(L, NTP_DNS_ERR, hostname);
      break;
    }
    err_t err = FUNC0(hostname, FUNC1(), sntp_dns_found, state);
    if (err == ERR_INPROGRESS)
      break;  // Callback function sntp_dns_found will handle sntp_dosend for us
    else if (err == ERR_ARG) {
      FUNC2(L, NTP_DNS_ERR, hostname);
      break;
    }
    server_count++;
  }
  FUNC5(L, 1);
}