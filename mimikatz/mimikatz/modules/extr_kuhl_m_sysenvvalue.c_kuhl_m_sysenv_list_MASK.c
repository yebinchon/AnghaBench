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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_4__ {scalar_t__ ValueLength; scalar_t__ ValueOffset; int /*<<< orphan*/  Attributes; int /*<<< orphan*/  VendorGuid; int /*<<< orphan*/  Name; scalar_t__ NextEntryOffset; } ;
typedef  TYPE_1__* PVARIABLE_NAME_AND_VALUE ;
typedef  scalar_t__ PBYTE ;
typedef  scalar_t__ NTSTATUS ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 scalar_t__ STATUS_BUFFER_TOO_SMALL ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  VARIABLE_INFORMATION_VALUES ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int) ; 

NTSTATUS FUNC9(int argc, wchar_t * argv[])
{
	NTSTATUS status;
	PVARIABLE_NAME_AND_VALUE buffer;
	DWORD bufferLen = 0;

	status = FUNC3(VARIABLE_INFORMATION_VALUES, NULL, &bufferLen);
	if((status == STATUS_BUFFER_TOO_SMALL) && bufferLen)
	{
		if((buffer = (PVARIABLE_NAME_AND_VALUE) FUNC0(LPTR, bufferLen)))
		{
			status = FUNC3(VARIABLE_INFORMATION_VALUES, buffer, &bufferLen);
			if(FUNC2(status))
			{
				for(; buffer; buffer = buffer->NextEntryOffset ? (PVARIABLE_NAME_AND_VALUE) ((PBYTE) buffer + buffer->NextEntryOffset) : NULL)
				{
					FUNC5(L"Name       : %s\nVendor GUID: ", buffer->Name);
					FUNC7(&buffer->VendorGuid);
					FUNC5(L"\nAttributes : %08x (", buffer->Attributes);
					FUNC6(buffer->Attributes);
					FUNC5(L")\nLength     : %u\nData       : ", buffer->ValueLength);
					if(buffer->ValueLength && buffer->ValueOffset)
						FUNC8((PBYTE) buffer + buffer->ValueOffset, buffer->ValueLength, 1);
					FUNC5(L"\n\n");
				}
			}
			else FUNC4(L"NtEnumerateSystemEnvironmentValuesEx(data): 0x%08x\n", status);
			FUNC1(buffer);
		}
	}
	else FUNC4(L"NtEnumerateSystemEnvironmentValuesEx(size): 0x%08x\n", status);
	return STATUS_SUCCESS;
}