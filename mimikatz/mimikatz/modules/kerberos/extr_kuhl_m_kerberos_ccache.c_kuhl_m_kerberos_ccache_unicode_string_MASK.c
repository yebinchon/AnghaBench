#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int USHORT ;
struct TYPE_7__ {int Length; int MaximumLength; scalar_t__ Buffer; } ;
struct TYPE_6__ {int Length; int MaximumLength; scalar_t__ Buffer; } ;
typedef  TYPE_1__ STRING ;
typedef  scalar_t__ PWSTR ;
typedef  TYPE_2__* PUNICODE_STRING ;
typedef  int /*<<< orphan*/ * PDWORD ;
typedef  scalar_t__ PCHAR ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

BOOL FUNC5(PBYTE *data, PUNICODE_STRING ustring)
{
	BOOL status = FALSE;
	STRING sName;
	sName.Length = sName.MaximumLength = (USHORT) FUNC4(*(PDWORD) *data);	*data += sizeof(DWORD);
	sName.Buffer = (PCHAR) *data; *data += sName.Length;
	ustring->Length = sName.Length * sizeof(wchar_t);
	ustring->MaximumLength = ustring->Length + sizeof(wchar_t);
	if((ustring->Buffer = (PWSTR) FUNC0(LPTR, ustring->MaximumLength)))
	{
		if(!(status = FUNC2(FUNC3(ustring, &sName, FALSE))))
			FUNC1(ustring->Buffer);
	}
	return status;
}