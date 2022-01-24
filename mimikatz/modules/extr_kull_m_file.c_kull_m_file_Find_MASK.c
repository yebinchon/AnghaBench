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
typedef  char wchar_t ;
struct TYPE_4__ {char* cFileName; int dwFileAttributes; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  char* PWCHAR ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__ (* PKULL_M_FILE_FIND_CALLBACK ) (int,char*,char*,int /*<<< orphan*/ ) ;
typedef  char* PCWCHAR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (char*) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int MAX_PATH ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (char*,int,char*) ; 
 scalar_t__ FUNC9 (char*,int,char*) ; 
 scalar_t__ FUNC10 (char*) ; 

BOOL FUNC11(PCWCHAR directory, PCWCHAR filter, BOOL isRecursive /*TODO*/, DWORD level, BOOL isPrintInfos, PKULL_M_FILE_FIND_CALLBACK callback, PVOID pvArg)
{
	BOOL status = FALSE;
	DWORD dwAttrib;
	HANDLE hFind;
	WIN32_FIND_DATA fData;
	PWCHAR fullpath;

	dwAttrib = FUNC3(directory);
	if((dwAttrib != INVALID_FILE_ATTRIBUTES) && (dwAttrib & FILE_ATTRIBUTE_DIRECTORY))
	{
		if(isPrintInfos && !level)
		{
			FUNC7(L"%*s" L"Directory \'%s\'", level << 1, L"", directory);
			if(filter)
				FUNC7(L" (%s)", filter);
			FUNC7(L"\n");
		}
		if((fullpath = (wchar_t *) FUNC4(LPTR, MAX_PATH * sizeof(wchar_t))))
		{
			if(FUNC9(fullpath, MAX_PATH, directory) == 0)
			{
				if(FUNC8(fullpath, MAX_PATH, L"\\") == 0)
				{
					if(FUNC8(fullpath, MAX_PATH, filter ? filter : L"*") == 0)
					{
						hFind = FUNC1(fullpath, &fData);
						if(hFind != INVALID_HANDLE_VALUE)
						{
							do
							{
								if(FUNC6(fData.cFileName, L".") && FUNC6(fData.cFileName, L".."))
								{
									if(FUNC9(fullpath, MAX_PATH, directory) == 0)
									{
										if(FUNC8(fullpath, MAX_PATH, L"\\") == 0)
										{
											dwAttrib = (DWORD) FUNC10(fullpath);
											if(FUNC8(fullpath, MAX_PATH, fData.cFileName) == 0)
											{
												if(isPrintInfos)
													FUNC7(L"%*s" L"%3u %c|'%s\'\n", level << 1, L"", level, (fData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) ? L'D' : L'F' , fData.cFileName);
												if(!(fData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
												{
													if(callback)
														status = callback(level, fullpath, fullpath + dwAttrib, pvArg);
												}
												else if(isRecursive && fData.cFileName)
													status = FUNC11(fullpath, filter, TRUE, level + 1, isPrintInfos, callback, pvArg);
											}
										}
									}
								}
							} while(!status && FUNC2(hFind, &fData));
							FUNC0(hFind);
						}
					}
				}
			}
		}
		FUNC5(fullpath);
	}
	return status;
}