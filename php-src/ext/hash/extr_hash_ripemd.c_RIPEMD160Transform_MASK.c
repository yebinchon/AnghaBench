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
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 size_t* R ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,unsigned char const*,int) ; 
 scalar_t__ FUNC8 (int,scalar_t__) ; 
 scalar_t__ FUNC9 (int,scalar_t__) ; 
 scalar_t__ FUNC10 (int,scalar_t__) ; 
 size_t* RR ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int) ; 

__attribute__((used)) static void FUNC12(uint32_t state[5], const unsigned char block[64])
{
	uint32_t a  = state[0], b  = state[1], c  = state[2], d  = state[3], e  = state[4];
	uint32_t aa = state[0], bb = state[1], cc = state[2], dd = state[3], ee = state[4];
	uint32_t tmp, x[16];
	int j;

	FUNC7(x, block, 64);

	for(j = 0; j < 16; j++) {
		tmp = FUNC9( j, a  + FUNC0(b,  c,  d)  + x[R[j]]  + FUNC5(j)) + e;
		a = e; e = d; d = FUNC8(10, c); c = b; b = tmp;
		tmp = FUNC10(j, aa + FUNC4(bb, cc, dd) + x[RR[j]] + FUNC6(j)) + ee;
		aa = ee; ee = dd; dd = FUNC8(10, cc); cc = bb; bb = tmp;
	}

	for(j = 16; j < 32; j++) {
		tmp = FUNC9( j, a  + FUNC1(b,  c,  d)  + x[R[j]]  + FUNC5(j)) + e;
		a = e; e = d; d = FUNC8(10, c); c = b; b = tmp;
		tmp = FUNC10(j, aa + FUNC3(bb, cc, dd) + x[RR[j]] + FUNC6(j)) + ee;
		aa = ee; ee = dd; dd = FUNC8(10, cc); cc = bb; bb = tmp;
	}

	for(j = 32; j < 48; j++) {
		tmp = FUNC9( j, a  + FUNC2(b,  c,  d)  + x[R[j]]  + FUNC5(j)) + e;
		a = e; e = d; d = FUNC8(10, c); c = b; b = tmp;
		tmp = FUNC10(j, aa + FUNC2(bb, cc, dd) + x[RR[j]] + FUNC6(j)) + ee;
		aa = ee; ee = dd; dd = FUNC8(10, cc); cc = bb; bb = tmp;
	}

	for(j = 48; j < 64; j++) {
		tmp = FUNC9( j, a  + FUNC3(b,  c,  d)  + x[R[j]]  + FUNC5(j)) + e;
		a = e; e = d; d = FUNC8(10, c); c = b; b = tmp;
		tmp = FUNC10(j, aa + FUNC1(bb, cc, dd) + x[RR[j]] + FUNC6(j)) + ee;
		aa = ee; ee = dd; dd = FUNC8(10, cc); cc = bb; bb = tmp;
	}

	for(j = 64; j < 80; j++) {
		tmp = FUNC9( j, a  + FUNC4(b,  c,  d)  + x[R[j]]  + FUNC5(j)) + e;
		a = e; e = d; d = FUNC8(10, c); c = b; b = tmp;
		tmp = FUNC10(j, aa + FUNC0(bb, cc, dd) + x[RR[j]] + FUNC6(j)) + ee;
		aa = ee; ee = dd; dd = FUNC8(10, cc); cc = bb; bb = tmp;
	}

	tmp = state[1] + c + dd;
	state[1] = state[2] + d + ee;
	state[2] = state[3] + e + aa;
	state[3] = state[4] + a + bb;
	state[4] = state[0] + b + cc;
	state[0] = tmp;

	tmp = 0;
	FUNC11(x, sizeof(x));
}