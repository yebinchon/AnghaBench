#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mask_t ;
typedef  TYPE_1__* gf ;
struct TYPE_8__ {int /*<<< orphan*/ * limb; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int) ; 
 unsigned int NLIMBS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__* const,TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

mask_t FUNC4(const gf a, const gf b)
{
    gf c;
    mask_t ret = 0;
    unsigned int i;

    FUNC2(c, a, b);
    FUNC1(c);

    for (i = 0; i < NLIMBS; i++)
        ret |= c->limb[FUNC0(i)];

    return FUNC3(ret);
}