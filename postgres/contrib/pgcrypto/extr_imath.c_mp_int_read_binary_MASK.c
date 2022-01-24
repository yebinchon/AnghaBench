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
typedef  int mp_size ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
typedef  unsigned char mp_digit ;
struct TYPE_8__ {scalar_t__ sign; } ;

/* Variables and functions */
 int CHAR_BIT ; 
 unsigned char* FUNC0 (TYPE_1__*) ; 
 int MP_DIGIT_BIT ; 
 int /*<<< orphan*/  MP_MEMORY ; 
 scalar_t__ MP_NEG ; 
 int /*<<< orphan*/  MP_OK ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

mp_result
FUNC7(mp_int z, unsigned char *buf, int len)
{
	FUNC2(z != NULL && buf != NULL && len > 0);

	/* Figure out how many digits are needed to represent this value */
	mp_size		need = ((len * CHAR_BIT) + (MP_DIGIT_BIT - 1)) / MP_DIGIT_BIT;

	if (!FUNC5(z, need))
		return MP_MEMORY;

	FUNC3(z);

	/*
	 * If the high-order bit is set, take the 2's complement before reading
	 * the value (it will be restored afterward)
	 */
	if (buf[0] >> (CHAR_BIT - 1))
	{
		z->sign = MP_NEG;
		FUNC4(buf, len);
	}

	mp_digit   *dz = FUNC0(z);
	unsigned char *tmp = buf;

	for (int i = len; i > 0; --i, ++tmp)
	{
		FUNC6(z, (mp_size) CHAR_BIT);
		*dz |= *tmp;
	}

	/* Restore 2's complement if we took it before */
	if (FUNC1(z) == MP_NEG)
		FUNC4(buf, len);

	return MP_OK;
}