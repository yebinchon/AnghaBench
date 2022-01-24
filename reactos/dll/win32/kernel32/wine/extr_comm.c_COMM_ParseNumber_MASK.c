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
typedef  int /*<<< orphan*/ * LPDWORD ;
typedef  char* LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static LPCWSTR FUNC1(LPCWSTR ptr, LPDWORD lpnumber)
{
	if(*ptr < '0' || *ptr > '9') return NULL;
	*lpnumber = FUNC0(ptr, NULL, 10);
	while(*ptr >= '0' && *ptr <= '9') ptr++;
	return ptr;
}