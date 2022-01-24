#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int UINT32 ;
struct TYPE_3__ {int /*<<< orphan*/ * roundKey; } ;
typedef  TYPE_1__* PCSYMCRYPT_NT5_DES_EXPANDED_KEY ;
typedef  scalar_t__ PBYTE ;
typedef  scalar_t__ LPCBYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 

VOID FUNC3(PCSYMCRYPT_NT5_DES_EXPANDED_KEY pExpandedKey, LPCBYTE pbSrc, PBYTE pbDst, BOOL Encrypt)
{
	UINT32 L = *(UINT32 *) (pbSrc + 4), R = *(UINT32 *) (pbSrc + 0), Ta, Tb;
	int r;

	R = FUNC1(R, 4);
	Ta = (L ^ R) & 0xf0f0f0f0;
	L ^= Ta;
	R ^= Ta;
	L = FUNC1(L, 20);
	Ta = (L ^ R) & 0xfff0000f;
	L ^= Ta;
	R ^= Ta;
	L = FUNC1(L, 14);
	Ta = (L ^ R) & 0x33333333;
	L ^= Ta;
	R ^= Ta;
	R = FUNC1(R, 22);
	Ta = (L ^ R) & 0x03fc03fc;
	L ^= Ta;
	R ^= Ta;
	R = FUNC1(R, 9);
	Ta = (L ^ R) & 0xaaaaaaaa;
	L ^= Ta;
	R ^= Ta;
	L = FUNC1(L, 1);

	if(Encrypt)
	{
		for(r = 0; r < 16; r += 2)
		{
			FUNC0(L, R, pExpandedKey->roundKey[r  ]);
			FUNC0(R, L, pExpandedKey->roundKey[r+1]);
		}
	}
	else
	{
		for(r = 14; r >= 0 ; r -= 2)
		{
			FUNC0(L, R, pExpandedKey->roundKey[r+1]);
			FUNC0(R, L, pExpandedKey->roundKey[r]);
		}
	}

	R = FUNC2(R, 1);
	Ta = (L ^ R) & 0xaaaaaaaa;
	L ^= Ta;
	R ^= Ta;
	L = FUNC2(L, 9);
	Ta = (L ^ R) & 0x03fc03fc;
	L ^= Ta;
	R ^= Ta;
	L = FUNC2(L, 22);
	Ta = (L ^ R) & 0x33333333;
	L ^= Ta;
	R ^= Ta;
	R = FUNC2(R, 14);
	Ta = (L ^ R) & 0xfff0000f;
	L ^= Ta;
	R ^= Ta;
	R = FUNC2(R, 20);
	Ta = (L ^ R) & 0xf0f0f0f0;
	L ^= Ta;
	R ^= Ta;
	L = FUNC2(L, 4);
	*(UINT32 *) (pbDst + 0) = L;
	*(UINT32 *) (pbDst + 4) = R;
}