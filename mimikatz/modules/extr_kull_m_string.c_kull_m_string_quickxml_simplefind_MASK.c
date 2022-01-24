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
typedef  int* LPWSTR ;
typedef  int* LPCWSTR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 scalar_t__ FUNC3 (int*) ; 
 int* FUNC4 (int*,int*) ; 

BOOL FUNC5(LPCWSTR xml, LPCWSTR node, LPWSTR *dst)
{
	BOOL status = FALSE;
	DWORD lenNode, lenBegin, lenEnd;
	LPWSTR begin, end, curBeg, curEnd;
	lenNode = (DWORD) FUNC3(node) * sizeof(wchar_t);
	lenBegin = lenNode + 3 * sizeof(wchar_t);
	lenEnd = lenNode + 4 * sizeof(wchar_t);
	if((begin = (LPWSTR) FUNC0(LPTR, lenBegin)))
	{
		if((end = (LPWSTR) FUNC0(LPTR, lenEnd)))
		{
			begin[0] = end[0] = L'<';
			end[1] = L'/';
			begin[lenBegin / sizeof(wchar_t) - 2] = end[lenEnd / sizeof(wchar_t) - 2] = L'>';
			FUNC2(begin + 1, node, lenNode);
			FUNC2(end + 2, node, lenNode);
			if((curBeg = FUNC4(xml, begin)))
			{
				curBeg += lenBegin / sizeof(wchar_t) - 1;
				if((curEnd = FUNC4(curBeg, end)))
				{
					if((status = (curBeg <= curEnd)))
					{
						lenNode = (DWORD) (curEnd - curBeg) * sizeof(wchar_t);
						if(((*dst) = (LPWSTR) FUNC0(LPTR, lenNode + sizeof(wchar_t))))
						{
							FUNC2(*dst, curBeg, lenNode);
						}
					}
				}
			}
			FUNC1(end);
		}
		FUNC1(begin);
	}
	return status;
}