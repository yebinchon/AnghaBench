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
typedef  int /*<<< orphan*/  conn ;
struct TYPE_2__ {int detail_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__ settings ; 
 char* FUNC2 (int*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) inline static void FUNC5(conn *c, const char *command) {
    FUNC0(c != NULL);

    if (FUNC3(command, "on") == 0) {
        settings.detail_enabled = 1;
        FUNC1(c, "OK");
    }
    else if (FUNC3(command, "off") == 0) {
        settings.detail_enabled = 0;
        FUNC1(c, "OK");
    }
    else if (FUNC3(command, "dump") == 0) {
        int len;
        char *stats = FUNC2(&len);
        FUNC4(c, stats, len);
    }
    else {
        FUNC1(c, "CLIENT_ERROR usage: stats detail on|off|dump");
    }
}