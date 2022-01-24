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
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 

__attribute__((used)) static void FUNC8(js_State *J)
{
    const char *event = FUNC2(J, 1);
    bool enable = FUNC1(J, 2);

    const char *name;
    for (int n = 0; n < 256 && (name = FUNC3(n)); n++) {
        if (FUNC7(name, event) == 0) {
            FUNC6(J, FUNC4(FUNC0(J), n, enable));
            return;
        }
    }
    FUNC5(J, "Unknown event name");
}