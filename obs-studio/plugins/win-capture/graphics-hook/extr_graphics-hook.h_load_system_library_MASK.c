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
typedef  scalar_t__ HMODULE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_path ; 

__attribute__((used)) static inline HMODULE FUNC4(const char *name)
{
	char base_path[MAX_PATH];
	HMODULE module;

	FUNC3(base_path, system_path);
	FUNC2(base_path, "\\");
	FUNC2(base_path, name);

	module = FUNC0(base_path);
	if (module)
		return module;

	return FUNC1(base_path);
}