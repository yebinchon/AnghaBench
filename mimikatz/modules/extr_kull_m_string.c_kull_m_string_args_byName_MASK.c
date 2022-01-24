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
typedef  int wchar_t ;
typedef  scalar_t__ SIZE_T ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int const*,int const*,scalar_t__) ; 
 int* FUNC1 (int const*,int) ; 
 int FUNC2 (int const*) ; 

BOOL FUNC3(const int argc, const wchar_t * argv[], const wchar_t * name, const wchar_t ** theArgs, const wchar_t * defaultValue)
{
	BOOL result = FALSE;
	const wchar_t *pArgName, *pSeparator;
	SIZE_T argLen, nameLen = FUNC2(name);
	int i;
	for(i = 0; i < argc; i++)
	{
		if((FUNC2(argv[i]) > 1) && ((argv[i][0] == L'/') || (argv[i][0] == L'-')))
		{
			pArgName = argv[i] + 1;
			if(!(pSeparator = FUNC1(argv[i], L':')))
				pSeparator = FUNC1(argv[i], L'=');

			argLen =  (pSeparator) ? (pSeparator - pArgName) : FUNC2(pArgName);
			if((argLen == nameLen) && FUNC0(name, pArgName, argLen) == 0)
			{
				if(theArgs)
				{
					if(pSeparator)
					{
						*theArgs = pSeparator + 1;
						result = *theArgs[0] != L'\0';
					}
				}
				else
					result = TRUE;
				break;
			}
		}
	}
	if(!result && theArgs)
	{
		if(defaultValue)
		{
			*theArgs = defaultValue;
			result = TRUE;
		}
		else *theArgs = NULL;
	}
	return result;
}