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
typedef  int /*<<< orphan*/  GUID ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FALSE ; 
 scalar_t__ NOERROR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC2(LPWSTR str)
{
	GUID ProductCode;

	if(FUNC1(str) != 38)
		return FALSE;
	return ( (FUNC0(str, &ProductCode) == NOERROR) );

}