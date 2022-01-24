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
struct dec3n {scalar_t__ w; scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
typedef  int UINT ;
typedef  scalar_t__ INT ;
typedef  int const FLOAT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct dec3n FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 

__attribute__((used)) static BOOL FUNC4(void *to, void *from, FLOAT epsilon)
{
    const UINT MAX_DEC3N = 511;
    DWORD *d1 = to;
    DWORD *d2 = from;
    struct dec3n v1 = FUNC1(*d1);
    struct dec3n v2 = FUNC1(*d2);
    INT scaled_epsilon = (INT)(epsilon * MAX_DEC3N);
    INT diff_x = FUNC0(v1.x - v2.x);
    INT diff_y = FUNC0(v1.y - v2.y);
    INT diff_z = FUNC0(v1.z - v2.z);
    INT diff_w = FUNC0(v1.w - v2.w);
    INT max_abs_diff = FUNC2(diff_x, diff_y);
    max_abs_diff = FUNC2(diff_z, max_abs_diff);
    max_abs_diff = FUNC2(diff_w, max_abs_diff);

    if (max_abs_diff <= scaled_epsilon)
    {
        FUNC3(to, from, sizeof(DWORD));

        return TRUE;
    }

    return FALSE;
}