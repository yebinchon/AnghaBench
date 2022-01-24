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
struct mechswitch {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAX_SWITCH_NAME_LENGTH ; 
 char* FUNC0 (struct mechswitch) ; 
 char* FUNC1 (struct mechswitch) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,char*,char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,scalar_t__) ; 
 char* FUNC5 (struct mechswitch) ; 

void FUNC6(struct mechswitch ms, char *buf) {
  const char *v_name = FUNC5(ms);
  const char *c_name = FUNC1(ms);

  FUNC2(buf, MAX_SWITCH_NAME_LENGTH, "%s", FUNC0(ms));
  FUNC4(buf, " ", MAX_SWITCH_NAME_LENGTH - FUNC3(buf));
  if (FUNC3(v_name) > 0) {
    FUNC4(buf, v_name, MAX_SWITCH_NAME_LENGTH - FUNC3(buf));
    FUNC4(buf, " ", MAX_SWITCH_NAME_LENGTH - FUNC3(buf));
  }
  if (FUNC3(c_name) > 0) {
    FUNC4(buf, c_name, MAX_SWITCH_NAME_LENGTH - FUNC3(buf));
  }
}