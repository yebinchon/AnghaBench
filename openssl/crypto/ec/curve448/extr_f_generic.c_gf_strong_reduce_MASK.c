#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ word_t ;
typedef  TYPE_1__* gf ;
typedef  int dword_t ;
typedef  int dsword_t ;
struct TYPE_6__ {scalar_t__* limb; } ;
struct TYPE_5__ {int* limb; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int) ; 
 int FUNC1 (size_t) ; 
 int FUNC2 (size_t) ; 
 TYPE_4__* MODULUS ; 
 unsigned int NLIMBS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(gf a)
{
    dsword_t scarry;
    word_t scarry_0;
    dword_t carry = 0;
    unsigned int i;

    /* first, clear high */
    FUNC4(a);          /* Determined to have negligible perf impact. */

    /* now the total is less than 2p */

    /* compute total_value - p.  No need to reduce mod p. */
    scarry = 0;
    for (i = 0; i < NLIMBS; i++) {
        scarry = scarry + a->limb[FUNC0(i)] - MODULUS->limb[FUNC0(i)];
        a->limb[FUNC0(i)] = scarry & FUNC1(FUNC0(i));
        scarry >>= FUNC2(FUNC0(i));
    }

    /*
     * uncommon case: it was >= p, so now scarry = 0 and this = x common case:
     * it was < p, so now scarry = -1 and this = x - p + 2^255 so let's add
     * back in p.  will carry back off the top for 2^255.
     */
    FUNC3(scarry == 0 || scarry == -1);

    scarry_0 = (word_t)scarry;

    /* add it back */
    for (i = 0; i < NLIMBS; i++) {
        carry =
            carry + a->limb[FUNC0(i)] +
            (scarry_0 & MODULUS->limb[FUNC0(i)]);
        a->limb[FUNC0(i)] = carry & FUNC1(FUNC0(i));
        carry >>= FUNC2(FUNC0(i));
    }

    FUNC3(carry < 2 && ((word_t)carry + scarry_0) == 0);
}