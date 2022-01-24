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
typedef  int /*<<< orphan*/  os_param_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  SNTP_DOLOOKUPS_ID ; 
 int /*<<< orphan*/  SNTP_HANDLE_RESULT_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(os_param_t param, uint8_t prio)
{
  (void) param;
  (void) prio;

  lua_State *L = FUNC1();

  if (param == SNTP_HANDLE_RESULT_ID) {
    FUNC3(L);
  } else if (param == SNTP_DOLOOKUPS_ID) {
    FUNC2(L);
  } else {
    FUNC0(L, param, NULL);
  }
}