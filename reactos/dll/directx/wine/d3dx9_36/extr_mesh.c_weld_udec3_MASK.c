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
struct udec3 {scalar_t__ x; scalar_t__ y; scalar_t__ z; scalar_t__ w; } ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  FLOAT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 struct udec3 FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 

__attribute__((used)) static BOOL FUNC3(void *to, void *from, FLOAT epsilon)
{
    DWORD *d1 = to;
    DWORD *d2 = from;
    struct udec3 v1 = FUNC0(*d1);
    struct udec3 v2 = FUNC0(*d2);
    UINT truncated_epsilon = (UINT)epsilon;
    UINT diff_x = v1.x > v2.x ? v1.x - v2.x : v2.x - v1.x;
    UINT diff_y = v1.y > v2.y ? v1.y - v2.y : v2.y - v1.y;
    UINT diff_z = v1.z > v2.z ? v1.z - v2.z : v2.z - v1.z;
    UINT diff_w = v1.w > v2.w ? v1.w - v2.w : v2.w - v1.w;
    UINT max_diff = FUNC1(diff_x, diff_y);
    max_diff = FUNC1(diff_z, max_diff);
    max_diff = FUNC1(diff_w, max_diff);

    if (max_diff <= truncated_epsilon)
    {
        FUNC2(to, from, sizeof(DWORD));

        return TRUE;
    }

    return FALSE;
}