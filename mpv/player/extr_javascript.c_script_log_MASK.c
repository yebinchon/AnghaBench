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
struct mp_log {int dummy; } ;
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_2__ {struct mp_log* log; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_log*,int,char*,...) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(js_State *J)
{
    const char *level = FUNC3(J, 1);
    int msgl = FUNC5(level);
    if (msgl < 0)
        FUNC1(J, "Invalid log level '%s'", level);

    struct mp_log *log = FUNC0(J)->log;
    for (int top = FUNC2(J), i = 2; i < top; i++)
        FUNC4(log, msgl, (i == 2 ? "%s" : " %s"), FUNC3(J, i));
    FUNC4(log, msgl, "\n");
    FUNC6(J);
}