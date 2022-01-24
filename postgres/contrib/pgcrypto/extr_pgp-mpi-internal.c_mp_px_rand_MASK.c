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
typedef  int uint8 ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  mpz_t ;

/* Variables and functions */
 int PXE_NO_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int*,unsigned int) ; 
 int* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static int
FUNC4(uint32 bits, mpz_t *res)
{
	unsigned	bytes = (bits + 7) / 8;
	int			last_bits = bits & 7;
	uint8	   *buf;

	buf = FUNC2(bytes);
	if (!FUNC1(buf, bytes))
	{
		FUNC3(buf);
		return PXE_NO_RANDOM;
	}

	/* clear unnecessary bits and set last bit to one */
	if (last_bits)
	{
		buf[0] >>= 8 - last_bits;
		buf[0] |= 1 << (last_bits - 1);
	}
	else
		buf[0] |= 1 << 7;

	FUNC0(res, buf, bytes);

	FUNC3(buf);

	return 0;
}