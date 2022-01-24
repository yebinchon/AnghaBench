#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dstr {char* array; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {size_t num; TYPE_1__* array; } ;
struct TYPE_3__ {int /*<<< orphan*/  array; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,struct dstr*) ; 
 TYPE_2__ core_module_paths ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 char* FUNC2 (char const*) ; 

char *FUNC3(const char *file)
{
	struct dstr path = {0};

	char *result = FUNC2(file);
	if (result)
		return result;

	for (size_t i = 0; i < core_module_paths.num; ++i) {
		if (FUNC0(file, core_module_paths.array[i].array, &path))
			return path.array;
	}

	FUNC1(&path);
	return NULL;
}