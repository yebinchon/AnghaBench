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
struct TYPE_3__ {scalar_t__ tag; } ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_1__* PKIWI_BCRYPT_BIGNUM_Header ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ DWORD32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(PVOID curBase, DWORD32 remBase, DWORD32 remAddr, LPCWSTR num)
{
	PKIWI_BCRYPT_BIGNUM_Header bn;
	if(remAddr)
	{
		bn = (PKIWI_BCRYPT_BIGNUM_Header) ((PBYTE) curBase + (remAddr - remBase));
		if(bn->tag)
		{
			FUNC0(L"%s: ", num);
			FUNC1(bn);
			FUNC0(L"\n");
		}
	}
}