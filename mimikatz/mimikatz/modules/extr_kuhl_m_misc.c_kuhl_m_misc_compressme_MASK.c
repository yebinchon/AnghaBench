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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIMIKATZ_COMPRESSED_FILENAME ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/ * _wpgmptr ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 

NTSTATUS FUNC6(int argc, wchar_t * argv[])
{
	PBYTE data, compressedData;
	DWORD size, compressedSize;
#pragma warning(push)
#pragma warning(disable:4996)
	wchar_t *fileName = _wpgmptr;
#pragma warning(pop)
	FUNC2(L"Using \'%s\' as input file\n", fileName);
	if(FUNC3(fileName, &data, &size))
	{
		FUNC2(L" * Original size  : %u\n", size);
		if(FUNC5(data, size, (PVOID *) &compressedData, &compressedSize))
		{
			FUNC2(L" * Compressed size: %u (%.2f%%)\nUsing \'%s\' as output file... ", compressedSize, 100 * ((float) compressedSize / (float) size), MIMIKATZ_COMPRESSED_FILENAME);
			if(FUNC4(MIMIKATZ_COMPRESSED_FILENAME, compressedData, compressedSize))
				FUNC2(L"OK!\n");
			else FUNC1(L"kull_m_file_writeData");
			FUNC0(compressedData);
		}
		FUNC0(data);
	}
	return STATUS_SUCCESS;
}