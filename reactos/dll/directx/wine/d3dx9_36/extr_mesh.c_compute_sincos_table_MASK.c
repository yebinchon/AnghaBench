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
struct sincos_table {int /*<<< orphan*/ * cos; int /*<<< orphan*/ * sin; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (float) ; 
 int /*<<< orphan*/  FUNC4 (float) ; 

__attribute__((used)) static BOOL FUNC5(struct sincos_table *sincos_table, float angle_start, float angle_step, int n)
{
    float angle;
    int i;

    sincos_table->sin = FUNC1(FUNC0(), 0, n * sizeof(*sincos_table->sin));
    if (!sincos_table->sin)
    {
        return FALSE;
    }
    sincos_table->cos = FUNC1(FUNC0(), 0, n * sizeof(*sincos_table->cos));
    if (!sincos_table->cos)
    {
        FUNC2(FUNC0(), 0, sincos_table->sin);
        return FALSE;
    }

    angle = angle_start;
    for (i = 0; i < n; i++)
    {
        sincos_table->sin[i] = FUNC4(angle);
        sincos_table->cos[i] = FUNC3(angle);
        angle += angle_step;
    }

    return TRUE;
}