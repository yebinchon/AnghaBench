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
typedef  int /*<<< orphan*/  VOID ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/ * PULONGLONG ;
typedef  int /*<<< orphan*/  PCSYMCRYPT_NT5_DESX_EXPANDED_KEY ;
typedef  int PBYTE ;
typedef  int /*<<< orphan*/ * LPCBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

VOID FUNC2(PCSYMCRYPT_NT5_DESX_EXPANDED_KEY pExpandedKey, PBYTE pbChainingValue, LPCBYTE pbSrc, PBYTE pbDst, SIZE_T cbData)
{
	LPCBYTE pbSrcEnd;
	for(pbSrcEnd = &pbSrc[cbData & ~7]; pbSrc < pbSrcEnd; pbSrc += 8, pbDst += 8)
	{
		*(PULONGLONG) pbChainingValue ^= *(PULONGLONG) pbSrc;
		FUNC1(pExpandedKey, pbChainingValue, pbDst);
		FUNC0(pbChainingValue, pbDst, 8);
	}
}