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
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int* LPBYTE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static LPCWSTR FUNC1(LPCWSTR ptr, LPBYTE lpbytesize)
{
	DWORD temp;

	if(!(ptr = FUNC0(ptr, &temp)))
		return NULL;

	if(temp >= 5 && temp <= 8)
	{
		*lpbytesize = temp;
		return ptr;
	}
	else
		return NULL;
}