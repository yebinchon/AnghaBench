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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int) ; 

__attribute__((used)) static void FUNC4(uint32_t state[4], const unsigned char block[64])
{
	uint32_t a = state[0], b = state[1], c = state[2], d = state[3], x[16];

	FUNC0(x, block, 64);

	/* Round 1 */
	FUNC1(a,b,c,d, 0, 3);
	FUNC1(d,a,b,c, 1, 7);
	FUNC1(c,d,a,b, 2,11);
	FUNC1(b,c,d,a, 3,19);
	FUNC1(a,b,c,d, 4, 3);
	FUNC1(d,a,b,c, 5, 7);
	FUNC1(c,d,a,b, 6,11);
	FUNC1(b,c,d,a, 7,19);
	FUNC1(a,b,c,d, 8, 3);
	FUNC1(d,a,b,c, 9, 7);
	FUNC1(c,d,a,b,10,11);
	FUNC1(b,c,d,a,11,19);
	FUNC1(a,b,c,d,12, 3);
	FUNC1(d,a,b,c,13, 7);
	FUNC1(c,d,a,b,14,11);
	FUNC1(b,c,d,a,15,19);

	/* Round 2 */
	FUNC2(a,b,c,d, 0, 3);
	FUNC2(d,a,b,c, 4, 5);
	FUNC2(c,d,a,b, 8, 9);
	FUNC2(b,c,d,a,12,13);
	FUNC2(a,b,c,d, 1, 3);
	FUNC2(d,a,b,c, 5, 5);
	FUNC2(c,d,a,b, 9, 9);
	FUNC2(b,c,d,a,13,13);
	FUNC2(a,b,c,d, 2, 3);
	FUNC2(d,a,b,c, 6, 5);
	FUNC2(c,d,a,b,10, 9);
	FUNC2(b,c,d,a,14,13);
	FUNC2(a,b,c,d, 3, 3);
	FUNC2(d,a,b,c, 7, 5);
	FUNC2(c,d,a,b,11, 9);
	FUNC2(b,c,d,a,15,13);

	/* Round 3 */
	FUNC3(a,b,c,d, 0, 3);
	FUNC3(d,a,b,c, 8, 9);
	FUNC3(c,d,a,b, 4,11);
	FUNC3(b,c,d,a,12,15);
	FUNC3(a,b,c,d, 2, 3);
	FUNC3(d,a,b,c,10, 9);
	FUNC3(c,d,a,b, 6,11);
	FUNC3(b,c,d,a,14,15);
	FUNC3(a,b,c,d, 1, 3);
	FUNC3(d,a,b,c, 9, 9);
	FUNC3(c,d,a,b, 5,11);
	FUNC3(b,c,d,a,13,15);
	FUNC3(a,b,c,d, 3, 3);
	FUNC3(d,a,b,c,11, 9);
	FUNC3(c,d,a,b, 7,11);
	FUNC3(b,c,d,a,15,15);

	state[0] += a;
	state[1] += b;
	state[2] += c;
	state[3] += d;
}