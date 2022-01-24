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
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_path ; 

__attribute__((used)) static inline HMODULE FUNC3(const char *module)
{
	char base_path[MAX_PATH];

	FUNC2(base_path, system_path);
	FUNC1(base_path, "\\");
	FUNC1(base_path, module);
	return FUNC0(base_path);
}