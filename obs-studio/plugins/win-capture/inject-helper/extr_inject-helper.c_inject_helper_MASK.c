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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int INJECT_ERROR_INVALID_PARAMS ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/  const*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(wchar_t *argv[], const wchar_t *dll)
{
	DWORD id;
	DWORD use_safe_inject;

	use_safe_inject = FUNC2(argv[2], NULL, 10);

	id = FUNC2(argv[3], NULL, 10);
	if (id == 0) {
		return INJECT_ERROR_INVALID_PARAMS;
	}

	return use_safe_inject ? FUNC1(id, dll)
			       : FUNC0(id, dll);
}