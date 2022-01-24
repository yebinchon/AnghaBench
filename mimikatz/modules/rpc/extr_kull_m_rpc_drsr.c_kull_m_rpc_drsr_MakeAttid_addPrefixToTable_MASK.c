#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int length; TYPE_3__* value; } ;
struct TYPE_13__ {int length; TYPE_3__* elements; } ;
struct TYPE_15__ {size_t ndx; TYPE_1__ prefix; } ;
struct TYPE_14__ {size_t PrefixCount; TYPE_3__* pPrefixEntry; } ;
typedef  TYPE_2__ SCHEMA_PREFIX_TABLE ;
typedef  TYPE_3__ PrefixTableEntry ;
typedef  TYPE_3__* PBYTE ;
typedef  TYPE_5__ OssEncodedOID ;
typedef  size_t DWORD ;
typedef  size_t BOOL ;

/* Variables and functions */
 size_t FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_3__*,int) ; 
 size_t TRUE ; 

DWORD FUNC4(SCHEMA_PREFIX_TABLE *prefixTable, OssEncodedOID *oidPrefix, DWORD *ndx, BOOL toAdd)
{
	BOOL status = FALSE;
	DWORD i;
	PrefixTableEntry *entries;

	for(i = 0; i < prefixTable->PrefixCount; i++)
	{
		if(prefixTable->pPrefixEntry[i].prefix.length == oidPrefix->length)
		{
			if(FUNC3(prefixTable->pPrefixEntry[i].prefix.elements, oidPrefix->value, oidPrefix->length))
			{
				status = TRUE;
				*ndx = prefixTable->pPrefixEntry[i].ndx;
				break;
			}
		}
	}
	if(!status && toAdd)
	{
		*ndx = prefixTable->PrefixCount;
		if((entries = (PrefixTableEntry *) FUNC0(sizeof(PrefixTableEntry) * ((*ndx) + 1))))
		{
			FUNC2(entries, prefixTable->pPrefixEntry, sizeof(PrefixTableEntry) * (*ndx));
			entries[*ndx].ndx = *ndx;
			entries[*ndx].prefix.length = oidPrefix->length;
			if((entries[*ndx].prefix.elements = (PBYTE) FUNC0(oidPrefix->length)))
			{
				FUNC2(entries[*ndx].prefix.elements, oidPrefix->value, oidPrefix->length);
				if(prefixTable->pPrefixEntry)
					FUNC1(prefixTable->pPrefixEntry);
				prefixTable->pPrefixEntry = entries;
				prefixTable->PrefixCount++;
				status = TRUE;
			}
		}
	}
	return status;
}