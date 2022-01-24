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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_quad_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC1 (char*,int*) ; 

int
FUNC2(uint32_t *vp, char *p, int base)
{
    u_quad_t v;

    if (base == 0)
        p = FUNC1 (p, &base);
    if (FUNC0 (&v, p, base)) {
        *vp = v;
        return (1);
    }
    return (0);
}