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
struct fn_entry {char const* name; int /*<<< orphan*/  length; int /*<<< orphan*/  afc_fn; scalar_t__ jsc_fn; } ;
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char const*) ; 

__attribute__((used)) static void FUNC4(js_State *J, const char *module,
                            const struct fn_entry *e)
{
    FUNC2(J);
    for (int n = 0; e[n].name; n++) {
        if (e[n].jsc_fn) {
            FUNC1(J, e[n].jsc_fn, e[n].name, e[n].length);
        } else {
            FUNC0(J, e[n].afc_fn, e[n].name, e[n].length);
        }
        FUNC3(J, -2, e[n].name);
    }
    FUNC3(J, -2, module);
}