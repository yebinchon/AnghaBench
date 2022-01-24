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
struct dstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  core_module_paths ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dstr*) ; 
 struct dstr* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char const*) ; 

void FUNC3(const char *path)
{
	struct dstr *new_path = FUNC1(core_module_paths);
	FUNC2(new_path, path);
	FUNC0(core_module_paths, new_path);
}