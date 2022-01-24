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
struct TYPE_2__ {int nid; } ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* curves ; 

__attribute__((used)) static int FUNC7(int n)
{
    EC_GROUP *group = NULL;
    int nid = curves[n].nid;

    if (!FUNC5(group = FUNC2(nid))) {
        FUNC4("EC_GROUP_new_curve_name() failed with curve %s\n",
                  FUNC3(nid));
        return 0;
    }
    if (!FUNC6(FUNC0(group, NULL))) {
        FUNC4("EC_GROUP_check() failed with curve %s\n", FUNC3(nid));
        FUNC1(group);
        return 0;
    }
    FUNC1(group);
    return 1;
}