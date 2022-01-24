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
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYNCHRONIZE ; 
 int /*<<< orphan*/  keepalive_name ; 

__attribute__((used)) static inline bool FUNC3(void)
{
	HANDLE handle = FUNC2(SYNCHRONIZE, false, keepalive_name);
	FUNC0(handle);

	if (handle)
		return true;

	return FUNC1() != ERROR_FILE_NOT_FOUND;
}