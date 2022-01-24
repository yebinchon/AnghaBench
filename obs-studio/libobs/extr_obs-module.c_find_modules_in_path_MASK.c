#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct obs_module_path {int /*<<< orphan*/  bin; } ;
struct dstr {int array; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {size_t gl_pathc; TYPE_1__* gl_pathv; } ;
typedef  TYPE_2__ os_glob_t ;
typedef  int /*<<< orphan*/  obs_find_module_callback_t ;
struct TYPE_5__ {int directory; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,int /*<<< orphan*/ ) ; 
 char FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct obs_module_path*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 char* FUNC11 (int,char*) ; 

__attribute__((used)) static void FUNC12(struct obs_module_path *omp,
				 obs_find_module_callback_t callback,
				 void *param)
{
	struct dstr search_path = {0};
	char *module_start;
	bool search_directories = false;
	os_glob_t *gi;

	FUNC2(&search_path, omp->bin);

	module_start = FUNC11(search_path.array, "%module%");
	if (module_start) {
		FUNC6(&search_path, module_start - search_path.array);
		search_directories = true;
	}

	if (!FUNC5(&search_path) && FUNC3(&search_path) != '/')
		FUNC1(&search_path, '/');

	FUNC1(&search_path, '*');
	if (!search_directories)
		FUNC0(&search_path, FUNC7());

	if (FUNC8(search_path.array, 0, &gi) == 0) {
		for (size_t i = 0; i < gi->gl_pathc; i++) {
			if (search_directories == gi->gl_pathv[i].directory)
				FUNC10(omp, gi->gl_pathv[i].path,
						     search_directories,
						     callback, param);
		}

		FUNC9(gi);
	}

	FUNC4(&search_path);
}