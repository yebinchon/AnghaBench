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
typedef  char wchar_t ;
typedef  int SIZE_T ;

/* Variables and functions */
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 

wchar_t * FUNC1(const char * ansi, SIZE_T szStr)
{
	wchar_t * buffer = NULL;
	SIZE_T i;

	if(ansi && szStr)
		if((buffer = (wchar_t *) FUNC0(LPTR, (szStr + 1) * sizeof(wchar_t))))
			for(i = 0; i < szStr; i++)
				buffer[i] = ansi[i];
	return buffer;
}