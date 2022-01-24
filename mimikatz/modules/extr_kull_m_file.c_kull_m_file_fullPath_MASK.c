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
typedef  int /*<<< orphan*/ * PWCHAR ;
typedef  scalar_t__ PCWCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

PWCHAR FUNC3(PCWCHAR fileName)
{
	PWCHAR buffer = NULL;
	DWORD bufferLen;
	if(fileName)
		if((bufferLen = FUNC0(fileName, NULL, 0)))
			if((buffer = (PWCHAR) FUNC1(LPTR, bufferLen * sizeof(wchar_t))))
				if(bufferLen != FUNC0(fileName, buffer, bufferLen))
					buffer = (PWCHAR) FUNC2(buffer);
	return buffer;
}