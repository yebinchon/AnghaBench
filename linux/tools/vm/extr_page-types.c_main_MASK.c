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

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PROC_KPAGECGROUP ; 
 int /*<<< orphan*/  PROC_KPAGECOUNT ; 
 scalar_t__ PROC_KPAGEFLAGS ; 
 int /*<<< orphan*/  SYS_KERNEL_MM_PAGE_IDLE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* kpagecgroup_fd ; 
 scalar_t__ kpagecount_fd ; 
 scalar_t__ opt_cgroup ; 
 scalar_t__ opt_file ; 
 int opt_hwpoison ; 
 scalar_t__ opt_kpageflags ; 
 int opt_list ; 
 int opt_list_cgroup ; 
 int opt_list_mapcnt ; 
 int opt_mark_idle ; 
 int opt_no_summary ; 
 scalar_t__ opt_pid ; 
 int opt_raw ; 
 int opt_unpoison ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  opts ; 
 scalar_t__ page_idle_fd ; 
 int /*<<< orphan*/  page_size ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 

int FUNC19(int argc, char *argv[])
{
	int c;

	page_size = FUNC6();

	while ((c = FUNC5(argc, argv,
				"rp:f:a:b:d:c:CilLMNXxF:h",
				opts, NULL)) != -1) {
		switch (c) {
		case 'r':
			opt_raw = 1;
			break;
		case 'p':
			FUNC12(optarg);
			break;
		case 'f':
			FUNC10(optarg);
			break;
		case 'a':
			FUNC7(optarg);
			break;
		case 'b':
			FUNC8(optarg);
			break;
		case 'c':
			FUNC9(optarg);
			break;
		case 'C':
			opt_list_cgroup = 1;
			break;
		case 'd':
			FUNC2(optarg);
			FUNC3(0);
		case 'i':
			opt_mark_idle = 1;
			break;
		case 'l':
			opt_list = 1;
			break;
		case 'L':
			opt_list = 2;
			break;
		case 'M':
			opt_list_mapcnt = 1;
			break;
		case 'N':
			opt_no_summary = 1;
			break;
		case 'X':
			opt_hwpoison = 1;
			FUNC13();
			break;
		case 'x':
			opt_unpoison = 1;
			FUNC13();
			break;
		case 'F':
			FUNC11(optarg);
			break;
		case 'h':
			FUNC16();
			FUNC3(0);
		default:
			FUNC16();
			FUNC3(1);
		}
	}

	if (!opt_kpageflags)
		opt_kpageflags = PROC_KPAGEFLAGS;

	if (opt_cgroup || opt_list_cgroup)
		kpagecgroup_fd = FUNC0(PROC_KPAGECGROUP, O_RDONLY);

	if (opt_list && opt_list_mapcnt)
		kpagecount_fd = FUNC0(PROC_KPAGECOUNT, O_RDONLY);

	if (opt_mark_idle && opt_file)
		page_idle_fd = FUNC0(SYS_KERNEL_MM_PAGE_IDLE, O_RDWR);

	if (opt_list && opt_pid)
		FUNC14("voffset\t");
	if (opt_list && opt_file)
		FUNC14("foffset\t");
	if (opt_list && opt_list_cgroup)
		FUNC14("cgroup\t");
	if (opt_list && opt_list_mapcnt)
		FUNC14("map-cnt\t");

	if (opt_list == 1)
		FUNC14("offset\tlen\tflags\n");
	if (opt_list == 2)
		FUNC14("offset\tflags\n");

	if (opt_file)
		FUNC18();
	else
		FUNC17();

	if (opt_list == 1)
		FUNC4();

	if (opt_no_summary)
		return 0;

	if (opt_list)
		FUNC14("\n\n");

	FUNC15();

	if (opt_list_mapcnt)
		FUNC1(kpagecount_fd);

	if (page_idle_fd >= 0)
		FUNC1(page_idle_fd);

	return 0;
}