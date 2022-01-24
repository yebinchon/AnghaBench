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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BerElement ;

/* Variables and functions */
 int /*<<< orphan*/  ID_CTX_ENCRYPTEDDATA_CIPHER ; 
 int /*<<< orphan*/  ID_CTX_ENCRYPTEDDATA_ETYPE ; 
 int /*<<< orphan*/  ID_CTX_ENCRYPTEDDATA_KVNO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

void FUNC2(BerElement * pBer, LONG eType, ULONG kvNo, LPCVOID data, DWORD size)
{
	FUNC1(pBer, "{t{i}", FUNC0(ID_CTX_ENCRYPTEDDATA_ETYPE), eType);
	if(eType)
		FUNC1(pBer, "t{i}", FUNC0(ID_CTX_ENCRYPTEDDATA_KVNO), kvNo);
	FUNC1(pBer, "t{o}}", FUNC0(ID_CTX_ENCRYPTEDDATA_CIPHER), data, size);
}