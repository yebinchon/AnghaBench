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
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int INJECT_ERROR_OPEN_PROCESS_FAIL ; 
 int /*<<< orphan*/  PROCESS_ALL_ACCESS ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(DWORD process_id, const wchar_t *dll)
{
	HANDLE process = FUNC2(PROCESS_ALL_ACCESS, false, process_id);
	int ret;

	if (process) {
		ret = FUNC1(process, dll);
		FUNC0(process);
	} else {
		ret = INJECT_ERROR_OPEN_PROCESS_FAIL;
	}

	return ret;
}