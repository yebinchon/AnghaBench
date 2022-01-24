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
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  scalar_t__ PUCHAR ;
typedef  scalar_t__* PLONG ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const,scalar_t__ const,int /*<<< orphan*/  const*,scalar_t__*,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC2(PUCHAR *addressePointeur, const PUCHAR adresseBase, const PUCHAR adresseMaxMin, const UCHAR *pattern, SIZE_T longueur, LONG offsetTo)
{
	NTSTATUS status = FUNC1(adresseBase, adresseMaxMin, pattern, addressePointeur, longueur);
	if(FUNC0(status))
	{
		*addressePointeur += offsetTo;
		#if defined(_M_X64)
			*addressePointeur += sizeof(LONG) + *(PLONG)(*addressePointeur);
		#elif defined(_M_IX86)
			*addressePointeur = *(PUCHAR *)(*addressePointeur);
		#endif
		
		if(!*addressePointeur)
			status = STATUS_INVALID_HANDLE;
	}
	return status;
}