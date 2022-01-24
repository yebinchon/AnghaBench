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
typedef  int mp_usmall ;
typedef  scalar_t__ mp_size ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  int /*<<< orphan*/ * mp_int ;
typedef  int /*<<< orphan*/  mp_digit ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int MP_DIGIT_BIT ; 
 scalar_t__ MP_NEG ; 
 int /*<<< orphan*/  MP_OK ; 
 int /*<<< orphan*/  MP_RANGE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MP_USMALL_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

mp_result
FUNC5(mp_int z, mp_usmall *out)
{
	FUNC3(z != NULL);

	/* Make sure the value is representable as an unsigned small integer */
	mp_size		sz = FUNC1(z);

	if (sz == MP_NEG || FUNC4(z, MP_USMALL_MAX) > 0)
	{
		return MP_RANGE;
	}

	mp_size		uz = FUNC2(z);
	mp_digit   *dz = FUNC0(z) + uz - 1;
	mp_usmall	uv = 0;

	while (uz > 0)
	{
		uv <<= MP_DIGIT_BIT / 2;
		uv = (uv << (MP_DIGIT_BIT / 2)) | *dz--;
		--uz;
	}

	if (out)
		*out = uv;

	return MP_OK;
}