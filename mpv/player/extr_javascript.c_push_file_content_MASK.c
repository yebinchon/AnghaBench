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
 int FUNC1 (int /*<<< orphan*/ *,char const*,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(js_State *J, const char *fname, int limit)
{
    void *af = FUNC3(NULL);
    int r = FUNC1(J, fname, limit, af);
    FUNC2(af);
    if (r)
        FUNC0(J);
}