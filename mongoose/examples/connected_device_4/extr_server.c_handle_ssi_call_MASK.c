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
struct TYPE_2__ {int /*<<< orphan*/  setting2; int /*<<< orphan*/  setting1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ s_settings ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static void FUNC2(struct mg_connection *nc, const char *param) {
  if (FUNC1(param, "setting1") == 0) {
    FUNC0(nc, "%s", s_settings.setting1);
  } else if (FUNC1(param, "setting2") == 0) {
    FUNC0(nc, "%s", s_settings.setting2);
  }
}