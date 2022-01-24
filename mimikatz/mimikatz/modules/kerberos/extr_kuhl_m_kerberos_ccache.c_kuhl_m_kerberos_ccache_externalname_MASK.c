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
typedef  void* USHORT ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_3__ {int /*<<< orphan*/ * Names; void* NameType; void* NameCount; } ;
typedef  int /*<<< orphan*/ * PUNICODE_STRING ;
typedef  TYPE_1__* PKERB_EXTERNAL_NAME ;
typedef  int /*<<< orphan*/ * PDWORD ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  KERB_EXTERNAL_NAME ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *) ; 

BOOL FUNC3(PBYTE *data, PKERB_EXTERNAL_NAME * name, PUNICODE_STRING realm)
{
	BOOL status = FALSE;
	DWORD i, count = FUNC1(*(PDWORD) (*data + sizeof(DWORD)));
	*name = NULL;
	if(count)
	{
		if((*name = (PKERB_EXTERNAL_NAME) FUNC0(LPTR, sizeof(KERB_EXTERNAL_NAME) + ((count - 1) * sizeof(UNICODE_STRING)))))
		{
			(*name)->NameCount = (USHORT) count;
			(*name)->NameType = (USHORT) FUNC1(*(PDWORD) *data);
			*data += 2 * sizeof(DWORD);
			
			status = FUNC2(data, realm);
			for(i = 0; i < count; i++)
				status &= FUNC2(data, &(*name)->Names[i]);
		}
	}
	return status;
}