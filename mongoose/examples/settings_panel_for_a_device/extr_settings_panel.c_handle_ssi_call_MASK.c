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
struct mg_connection {int dummy; } ;
struct TYPE_2__ {char const* setting3; int /*<<< orphan*/  setting2; int /*<<< orphan*/  setting1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ s_settings ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static void FUNC3(struct mg_connection *nc, const char *param) {
  if (FUNC2(param, "setting1") == 0) {
    FUNC1(nc, "%s", s_settings.setting1);
  } else if (FUNC2(param, "setting2") == 0) {
    FUNC1(nc, "%s", s_settings.setting2);
  } else if (FUNC2(param, "setting3_is_one") == 0) {
    if (FUNC2(s_settings.setting3, "one") == 0) FUNC0(nc, "checked");
  } else if (FUNC2(param, "setting3_is_two") == 0) {
    if (FUNC2(s_settings.setting3, "two") == 0) FUNC0(nc, "checked");
  }
}