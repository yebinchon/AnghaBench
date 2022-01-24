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
typedef  int /*<<< orphan*/  twop ;
typedef  int /*<<< orphan*/  pniels_t ;
typedef  int /*<<< orphan*/  const curve448_point_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC5(pniels_t * output,
                               const curve448_point_t working,
                               unsigned int tbits)
{
    curve448_point_t tmp;
    int i;
    pniels_t twop;

    FUNC4(output[0], working);

    if (tbits == 0)
        return;

    FUNC3(tmp, working);
    FUNC4(twop, tmp);

    FUNC1(tmp, output[0], 0);
    FUNC4(output[1], tmp);

    for (i = 2; i < 1 << tbits; i++) {
        FUNC1(tmp, twop, 0);
        FUNC4(output[i], tmp);
    }

    FUNC2(tmp);
    FUNC0(twop, sizeof(twop));
}