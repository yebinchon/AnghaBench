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
 int /*<<< orphan*/  FUNC0 (scalar_t__*,unsigned char const*,int) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 size_t* I2 ; 
 size_t* I3 ; 
 size_t* I4 ; 
 scalar_t__* K2 ; 
 scalar_t__* K3 ; 
 scalar_t__* K4 ; 
 size_t* M0 ; 
 size_t* M1 ; 
 size_t* M2 ; 
 size_t* M3 ; 
 size_t* M4 ; 
 size_t* M5 ; 
 size_t* M6 ; 
 size_t* M7 ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 

__attribute__((used)) static void FUNC7(uint32_t state[8], const unsigned char block[128])
{
	uint32_t E[8];
	uint32_t x[32];
	int i;

	FUNC0(x, block, 128);

	for(i = 0; i < 8; i++) {
		E[i] = state[i];
	}

	for(i = 0; i < 32; i++) {
		E[7 - (i % 8)] = FUNC5(FUNC1(E[M2[i]],E[M6[i]],E[M1[i]],E[M4[i]],E[M5[i]],E[M3[i]],E[M0[i]]),7) + FUNC5(E[M7[i]],11) + x[i];
	}
	for(i = 0; i < 32; i++) {
		E[7 - (i % 8)] = FUNC5(FUNC2(E[M3[i]],E[M5[i]],E[M2[i]],E[M0[i]],E[M1[i]],E[M6[i]],E[M4[i]]),7) + FUNC5(E[M7[i]],11) + x[I2[i]] + K2[i];
	}
	for(i = 0; i < 32; i++) {
		E[7 - (i % 8)] = FUNC5(FUNC3(E[M1[i]],E[M4[i]],E[M3[i]],E[M6[i]],E[M0[i]],E[M2[i]],E[M5[i]]),7) + FUNC5(E[M7[i]],11) + x[I3[i]] + K3[i];
	}
	for(i = 0; i < 32; i++) {
		E[7 - (i % 8)] = FUNC5(FUNC4(E[M6[i]],E[M4[i]],E[M0[i]],E[M5[i]],E[M2[i]],E[M1[i]],E[M3[i]]),7) + FUNC5(E[M7[i]],11) + x[I4[i]] + K4[i];
	}

	/* Update digest */
	for(i = 0; i < 8; i++) {
		state[i] += E[i];
	}

	/* Zeroize sensitive information. */
	FUNC6((unsigned char*) x, sizeof(x));
}