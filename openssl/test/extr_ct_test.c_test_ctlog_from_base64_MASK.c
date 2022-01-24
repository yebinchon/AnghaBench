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
typedef  int /*<<< orphan*/  CTLOG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(void)
{
    CTLOG *ctlogp = NULL;
    const char notb64[] = "\01\02\03\04";
    const char pad[] = "====";
    const char name[] = "name";

    /* We expect these to both fail! */
    if (!FUNC1(!FUNC0(&ctlogp, notb64, name))
        || !FUNC1(!FUNC0(&ctlogp, pad, name)))
        return 0;
    return 1;
}