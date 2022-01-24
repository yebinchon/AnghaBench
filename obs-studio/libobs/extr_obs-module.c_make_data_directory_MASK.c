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
struct dstr {char* array; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char const*,char const*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(const char *module_name, const char *data_dir)
{
	struct dstr parsed_data_dir = {0};
	bool found = false;

	FUNC1(&parsed_data_dir, data_dir, module_name);

	found = FUNC2(parsed_data_dir.array);

	if (!found && FUNC0(module_name, "lib", 3) == 0)
		FUNC1(&parsed_data_dir, data_dir, module_name + 3);

	return parsed_data_dir.array;
}