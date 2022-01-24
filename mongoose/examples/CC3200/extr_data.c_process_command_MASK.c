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
struct mg_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LL_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MCU_RED_LED_GPIO ; 
 int FUNC4 (char*,char*,int*,int*) ; 

__attribute__((used)) static void FUNC5(struct mg_connection *nc, unsigned char *data,
                            size_t len) {
  // TODO(lsm): use proper JSON parser
  int cmd, val;
  if (FUNC4((char *) data, "{\"t\":%d,\"v\":%d}", &cmd, &val) != 2) {
    FUNC3(LL_ERROR, ("Invalid request: %.*s", (int) len, data));
    return;
  }
  if (cmd == 1) {
    switch (val) {
      case '0': {
        FUNC0(MCU_RED_LED_GPIO);
        break;
      }
      case '1': {
        FUNC1(MCU_RED_LED_GPIO);
        break;
      }
      case '2': {
        FUNC2(MCU_RED_LED_GPIO);
        break;
      }
      default: {
        FUNC3(LL_ERROR, ("Invalid value: %.*s", (int) len, data));
        return;
      }
    }
  } else {
    FUNC3(LL_ERROR, ("Unknown command: %.*s", (int) len, data));
    return;
  }
}