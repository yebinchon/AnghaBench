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
struct TYPE_3__ {scalar_t__ inputWhitening; int /*<<< orphan*/  desKey; scalar_t__ outputWhitening; } ;
typedef  int* PULONGLONG ;
typedef  TYPE_1__* PCSYMCRYPT_NT5_DESX_EXPANDED_KEY ;
typedef  scalar_t__ PBYTE ;
typedef  scalar_t__ LPCBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

VOID FUNC1(PCSYMCRYPT_NT5_DESX_EXPANDED_KEY pExpandedKey, LPCBYTE pbSrc, PBYTE pbDst)
{
	*(PULONGLONG) pbDst = *(PULONGLONG) pbSrc ^ *(PULONGLONG) pExpandedKey->outputWhitening;
	FUNC0(&pExpandedKey->desKey, pbDst, pbDst, FALSE);
	*(PULONGLONG) pbDst ^= *(PULONGLONG) pExpandedKey->inputWhitening;
}