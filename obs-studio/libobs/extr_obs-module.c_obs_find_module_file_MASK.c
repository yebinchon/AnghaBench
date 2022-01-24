#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dstr {char* array; int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {int /*<<< orphan*/  data_path; } ;
typedef  TYPE_1__ obs_module_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,int /*<<< orphan*/ ) ; 
 char FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

char *FUNC7(obs_module_t *module, const char *file)
{
	struct dstr output = {0};

	if (!file)
		file = "";

	if (!module)
		return NULL;

	FUNC2(&output, module->data_path);
	if (!FUNC5(&output) && FUNC3(&output) != '/' && *file)
		FUNC1(&output, '/');
	FUNC0(&output, file);

	if (!FUNC6(output.array))
		FUNC4(&output);
	return output.array;
}