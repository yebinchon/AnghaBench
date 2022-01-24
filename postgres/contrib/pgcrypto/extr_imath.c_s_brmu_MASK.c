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
typedef  int mp_size ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  int /*<<< orphan*/  mp_int ;

/* Variables and functions */
 int MP_DIGIT_BIT ; 
 int /*<<< orphan*/  MP_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static mp_result
FUNC4(mp_int z, mp_int m)
{
	mp_size		um = FUNC0(m) * 2;

	if (!FUNC3(z, um))
		return MP_MEMORY;

	FUNC2(z, MP_DIGIT_BIT * um);
	return FUNC1(z, m, z, NULL);
}