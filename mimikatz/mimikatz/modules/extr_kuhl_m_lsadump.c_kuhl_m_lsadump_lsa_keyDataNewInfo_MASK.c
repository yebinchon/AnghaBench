#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t USHORT ;
struct TYPE_4__ {int /*<<< orphan*/  KeyLength; scalar_t__ KeyOffset; int /*<<< orphan*/  IterationCount; int /*<<< orphan*/  KeyType; } ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_1__* PKERB_KEY_DATA_NEW ;
typedef  scalar_t__ PCWSTR ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  KERB_KEY_DATA_NEW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PKERB_KEY_DATA_NEW FUNC3(PVOID base, PKERB_KEY_DATA_NEW keys, USHORT Count, PCWSTR title)
{
	USHORT i;
	if(Count)
	{
		if(title)
			FUNC0(L"    %s\n", title);
		for(i = 0; i < Count; i++)
		{
			FUNC0(L"      %s (%u) : ", FUNC1(keys[i].KeyType), keys->IterationCount);
			FUNC2((PBYTE) base + keys[i].KeyOffset, keys[i].KeyLength, 0);
			FUNC0(L"\n");
		}
	}
	return (PKERB_KEY_DATA_NEW) ((PBYTE) keys + Count * sizeof(KERB_KEY_DATA_NEW));
}