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
struct tffs_key_name_table {int size; int /*<<< orphan*/  entries; } ;
struct tffs_entry {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  TFFS_ID_TABLE_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tffs_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* mtddev ; 
 scalar_t__ mtdfd ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tffs_entry*,struct tffs_key_name_table*) ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 scalar_t__ print_all_key_names ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  sectors ; 
 scalar_t__ show_all ; 
 int /*<<< orphan*/  FUNC9 (struct tffs_key_name_table*) ; 
 int FUNC10 (struct tffs_key_name_table*) ; 
 int FUNC11 (struct tffs_key_name_table*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC12(int argc, char *argv[])
{
	int ret = EXIT_FAILURE;
	struct tffs_entry name_table;
	struct tffs_key_name_table key_names;

	progname = FUNC0(argv[0]);

	FUNC7(argc, argv);

	mtdfd = FUNC5(mtddev, O_RDONLY);
	if (mtdfd < 0) {
		FUNC3(stderr, "ERROR: Failed to open tffs device %s\n",
			mtddev);
		goto out;
	}

	if (!FUNC8()) {
		FUNC3(stderr, "ERROR: Parsing blocks from tffs device %s failed\n", mtddev);
		FUNC3(stderr, "       Is byte-swapping (-b) required?\n");
		goto out_close;
	}

	if (!FUNC2(TFFS_ID_TABLE_NAME, &name_table)) {
		FUNC3(stderr, "ERROR: No name table found on tffs device %s\n",
			mtddev);
		goto out_free_sectors;
	}

	FUNC6(&name_table, &key_names);
	if (key_names.size < 1) {
		FUNC3(stderr, "ERROR: No name table found on tffs device %s\n",
			mtddev);
		goto out_free_entry;
	}

	if (print_all_key_names) {
		FUNC9(&key_names);
		ret = EXIT_SUCCESS;
	} else if (show_all) {
		ret = FUNC10(&key_names);
	} else {
		ret = FUNC11(&key_names);
	}

	FUNC4(key_names.entries);
out_free_entry:
	FUNC4(name_table.val);
out_free_sectors:
	FUNC4(sectors);
out_close:
	FUNC1(mtdfd);
out:
	return ret;
}