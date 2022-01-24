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
typedef  int /*<<< orphan*/  x ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 size_t* R ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,unsigned char const*,int) ; 
 scalar_t__ FUNC7 (int,scalar_t__) ; 
 scalar_t__ FUNC8 (int,scalar_t__) ; 
 size_t* RR ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int) ; 

__attribute__((used)) static void FUNC10(uint32_t state[4], const unsigned char block[64])
{
	uint32_t a  = state[0], b  = state[1], c  = state[2], d  = state[3];
	uint32_t aa = state[0], bb = state[1], cc = state[2], dd = state[3];
	uint32_t tmp, x[16];
	int j;

	FUNC6(x, block, 64);

	for(j = 0; j < 16; j++) {
		tmp = FUNC7( j, a  + FUNC0(b,  c,  d)  + x[R[j]]  + FUNC4(j));
		a = d; d = c; c = b; b = tmp;
		tmp = FUNC8(j, aa + FUNC3(bb, cc, dd) + x[RR[j]] + FUNC5(j));
		aa = dd; dd = cc; cc = bb; bb = tmp;
	}

	for(j = 16; j < 32; j++) {
		tmp = FUNC7( j, a  + FUNC1(b,  c,  d)  + x[R[j]]  + FUNC4(j));
		a = d; d = c; c = b; b = tmp;
		tmp = FUNC8(j, aa + FUNC2(bb, cc, dd) + x[RR[j]] + FUNC5(j));
		aa = dd; dd = cc; cc = bb; bb = tmp;
	}

	for(j = 32; j < 48; j++) {
		tmp = FUNC7( j, a  + FUNC2(b,  c,  d)  + x[R[j]]  + FUNC4(j));
		a = d; d = c; c = b; b = tmp;
		tmp = FUNC8(j, aa + FUNC1(bb, cc, dd) + x[RR[j]] + FUNC5(j));
		aa = dd; dd = cc; cc = bb; bb = tmp;
	}

	for(j = 48; j < 64; j++) {
		tmp = FUNC7( j, a  + FUNC3(b,  c,  d)  + x[R[j]]  + FUNC4(j));
		a = d; d = c; c = b; b = tmp;
		tmp = FUNC8(j, aa + FUNC0(bb, cc, dd) + x[RR[j]] + FUNC5(j));
		aa = dd; dd = cc; cc = bb; bb = tmp;
	}

	tmp = state[1] + c + dd;
	state[1] = state[2] + d + aa;
	state[2] = state[3] + a + bb;
	state[3] = state[0] + b + cc;
	state[0] = tmp;

	tmp = 0;
	FUNC9(x, sizeof(x));
}