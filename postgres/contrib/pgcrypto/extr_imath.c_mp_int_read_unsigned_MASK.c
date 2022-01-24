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
typedef  int /*<<< orphan*/ * mp_int ;

/* Variables and functions */
 int CHAR_BIT ; 
 unsigned char* FUNC0 (int /*<<< orphan*/ *) ; 
 int MP_DIGIT_BIT ; 
 int /*<<< orphan*/  MP_MEMORY ; 
 int /*<<< orphan*/  MP_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

mp_result
FUNC5(mp_int z, unsigned char *buf, int len)
{
	FUNC1(z != NULL && buf != NULL && len > 0);

	/* Figure out how many digits are needed to represent this value */
	mp_size		need = ((len * CHAR_BIT) + (MP_DIGIT_BIT - 1)) / MP_DIGIT_BIT;

	if (!FUNC3(z, need))
		return MP_MEMORY;

	FUNC2(z);

	unsigned char *tmp = buf;

	for (int i = len; i > 0; --i, ++tmp)
	{
		(void) FUNC4(z, CHAR_BIT);
		*FUNC0(z) |= *tmp;
	}

	return MP_OK;
}