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
struct dstr {int /*<<< orphan*/  array; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (char**,size_t*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 

__attribute__((used)) static void FUNC13(void)
{
	int physical_id = -1;
	int last_physical_id = -1;
	char *line = NULL;
	size_t linecap = 0;

	FILE *fp;
	struct dstr proc_name;
	struct dstr proc_speed;

	fp = FUNC8("/proc/cpuinfo", "r");
	if (!fp)
		return;

	FUNC5(&proc_name);
	FUNC5(&proc_speed);

	while (FUNC10(&line, &linecap, fp) != -1) {
		if (!FUNC12(line, "model name", 10)) {
			char *start = FUNC11(line, ':');
			if (!start || *(++start) == '\0')
				continue;

			FUNC2(&proc_name, start);
			FUNC6(&proc_name, proc_name.len - 1);
			FUNC3(&proc_name);
		}

		if (!FUNC12(line, "physical id", 11)) {
			char *start = FUNC11(line, ':');
			if (!start || *(++start) == '\0')
				continue;

			physical_id = FUNC0(start);
		}

		if (!FUNC12(line, "cpu MHz", 7)) {
			char *start = FUNC11(line, ':');
			if (!start || *(++start) == '\0')
				continue;

			FUNC2(&proc_speed, start);
			FUNC6(&proc_speed, proc_speed.len - 1);
			FUNC3(&proc_speed);
		}

		if (*line == '\n' && physical_id != last_physical_id) {
			last_physical_id = physical_id;
			FUNC1(LOG_INFO, "CPU Name: %s", proc_name.array);
			FUNC1(LOG_INFO, "CPU Speed: %sMHz", proc_speed.array);
		}
	}

	FUNC7(fp);
	FUNC4(&proc_name);
	FUNC4(&proc_speed);
	FUNC9(line);
}