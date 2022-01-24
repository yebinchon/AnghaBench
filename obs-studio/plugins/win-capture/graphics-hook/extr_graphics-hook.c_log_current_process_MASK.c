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
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__* process_name ; 

__attribute__((used)) static inline void FUNC3(void)
{
	DWORD len = FUNC1(FUNC0(), NULL, process_name,
				       MAX_PATH);
	if (len > 0) {
		process_name[len] = 0;
		FUNC2("Hooked to process: %s", process_name);
	}

	FUNC2("(half life scientist) everything..  seems to be in order");
}