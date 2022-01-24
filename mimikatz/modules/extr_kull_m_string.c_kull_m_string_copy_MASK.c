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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 size_t FUNC1 (scalar_t__) ; 

BOOL FUNC2(LPWSTR *dst, LPCWSTR src)
{
	BOOL status = FALSE;
	size_t size;
	if(src && dst && (size = FUNC1(src)))
		status = FUNC0(dst, src, size);
	return status;
}