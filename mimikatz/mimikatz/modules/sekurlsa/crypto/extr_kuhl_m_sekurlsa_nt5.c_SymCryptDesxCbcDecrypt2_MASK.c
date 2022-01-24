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
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/ * LPCBYTE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

VOID FUNC2(PCSYMCRYPT_NT5_DESX_EXPANDED_KEY pExpandedKey, PBYTE pbChainingValue, LPCBYTE pbSrc, PBYTE pbDst, SIZE_T cbData)
{
	LPCBYTE pbSrcEnd;
	BYTE buf[8];
	for(pbSrcEnd = &pbSrc[cbData & ~7]; pbSrc < pbSrcEnd; pbDst += 8, pbSrc += 8)
	{
		FUNC0(buf, pbSrc, 8);
		FUNC1(pExpandedKey, pbSrc, pbDst);
		*(PULONGLONG) pbDst ^= *(PULONGLONG) pbChainingValue;
		FUNC0(pbChainingValue, buf, 8);
	}
}