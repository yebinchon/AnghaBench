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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(u32 rk[/*44*/], const u8 cipherKey[])
{
	int i;
	u32 temp;

	rk[0] = FUNC0(cipherKey     );
	rk[1] = FUNC0(cipherKey +  4);
	rk[2] = FUNC0(cipherKey +  8);
	rk[3] = FUNC0(cipherKey + 12);
	for (i = 0; i < 10; i++) {
		temp  = rk[3];
		rk[4] = rk[0] ^
			FUNC3(temp) ^ FUNC4(temp) ^ FUNC5(temp) ^ FUNC2(temp) ^
			FUNC1(i);
		rk[5] = rk[1] ^ rk[4];
		rk[6] = rk[2] ^ rk[5];
		rk[7] = rk[3] ^ rk[6];
		rk += 4;
	}
}