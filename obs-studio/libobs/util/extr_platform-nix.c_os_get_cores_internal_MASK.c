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
struct dstr {char* array; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int core_count_initialized ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC7 (struct dstr*) ; 
 scalar_t__ FUNC8 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC9 (struct dstr*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int logical_cores ; 
 char* FUNC14 (char*) ; 
 int physical_cores ; 
 char* FUNC15 (char*,char) ; 
 size_t FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 
 char* FUNC18 (char*,char*) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(void)
{
	if (core_count_initialized)
		return;

	core_count_initialized = true;

	logical_cores = FUNC19(_SC_NPROCESSORS_ONLN);

#if defined(__linux__)
	int physical_id = -1;
	int last_physical_id = -1;
	int core_count = 0;
	char *line = NULL;
	size_t linecap = 0;

	FILE *fp;
	struct dstr proc_phys_id;
	struct dstr proc_phys_ids;

	fp = FUNC11("/proc/cpuinfo", "r");
	if (!fp)
		return;

	FUNC7(&proc_phys_id);
	FUNC7(&proc_phys_ids);

	while (FUNC13(&line, &linecap, fp) != -1) {
		if (!FUNC17(line, "physical id", 11)) {
			char *start = FUNC15(line, ':');
			if (!start || *(++start) == '\0')
				continue;

			physical_id = FUNC0(start);
			FUNC6(&proc_phys_id);
			FUNC7(&proc_phys_id);
			FUNC4(&proc_phys_id, "%d", physical_id);
		}

		if (!FUNC17(line, "cpu cores", 9)) {
			char *start = FUNC15(line, ':');
			if (!start || *(++start) == '\0')
				continue;

			if (FUNC8(&proc_phys_ids) ||
			    (!FUNC8(&proc_phys_ids) &&
			     !FUNC5(&proc_phys_ids, proc_phys_id.array))) {
				FUNC3(&proc_phys_ids, &proc_phys_id);
				FUNC2(&proc_phys_ids, " ");
				core_count += FUNC0(start);
			}
		}

		if (*line == '\n' && physical_id != last_physical_id) {
			last_physical_id = physical_id;
		}
	}

	if (core_count == 0)
		physical_cores = logical_cores;
	else
		physical_cores = core_count;

	FUNC10(fp);
	FUNC6(&proc_phys_ids);
	FUNC6(&proc_phys_id);
	FUNC12(line);
#elif defined(__FreeBSD__)
	char *text = os_quick_read_utf8_file("/var/run/dmesg.boot");
	char *core_count = text;
	int packages = 0;
	int cores = 0;

	struct dstr proc_packages;
	struct dstr proc_cores;
	dstr_init(&proc_packages);
	dstr_init(&proc_cores);

	if (!text || !*text) {
		physical_cores = logical_cores;
		return;
	}

	core_count = strstr(core_count, "\nFreeBSD/SMP: ");
	if (!core_count)
		goto FreeBSD_cores_cleanup;

	core_count++;
	core_count = strstr(core_count, "\nFreeBSD/SMP: ");
	if (!core_count)
		goto FreeBSD_cores_cleanup;

	core_count = strstr(core_count, ": ");
	core_count += 2;
	size_t len = strcspn(core_count, " ");
	dstr_ncopy(&proc_packages, core_count, len);

	core_count = strstr(core_count, "package(s) x ");
	if (!core_count)
		goto FreeBSD_cores_cleanup;

	core_count += 13;
	len = strcspn(core_count, " ");
	dstr_ncopy(&proc_cores, core_count, len);

FreeBSD_cores_cleanup:
	if (!dstr_is_empty(&proc_packages))
		packages = atoi(proc_packages.array);
	if (!dstr_is_empty(&proc_cores))
		cores = atoi(proc_cores.array);

	if (packages == 0)
		physical_cores = logical_cores;
	else if (cores == 0)
		physical_cores = packages;
	else
		physical_cores = packages * cores;

	dstr_free(&proc_cores);
	dstr_free(&proc_packages);
	bfree(text);
#else
	physical_cores = logical_cores;
#endif
}