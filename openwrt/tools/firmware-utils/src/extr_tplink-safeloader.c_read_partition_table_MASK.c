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
struct flash_partition_entry {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (struct flash_partition_entry*,size_t,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int,int) ; 
 scalar_t__ FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 unsigned long FUNC9 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10(
		FILE *file, long offset,
		struct flash_partition_entry *entries, size_t max_entries,
		int type)
{
	char buf[2048];
	char *ptr, *end;
	const char *parthdr = NULL;
	const char *fwuphdr = "fwup-ptn";
	const char *flashhdr = "partition";

	/* TODO: search for the partition table */

	switch(type) {
		case 0:
			parthdr = fwuphdr;
			break;
		case 1:
			parthdr = flashhdr;
			break;
		default:
			FUNC1(1, 0, "Invalid partition table");
	}

	if (FUNC4(file, offset, SEEK_SET) < 0)
		FUNC1(1, errno, "Can not seek in the firmware");

	if (FUNC3(buf, 2048, 1, file) != 1)
		FUNC1(1, errno, "Can not read fwup-ptn from the firmware");

	buf[2047] = '\0';

	/* look for the partition header */
	if (FUNC6(buf, parthdr, FUNC7(parthdr)) != 0) {
		FUNC2(stderr, "DEBUG: can not find fwuphdr\n");
		return 1;
	}

	ptr = buf;
	end = buf + sizeof(buf);
	while ((ptr + FUNC7(parthdr)) < end &&
			FUNC6(ptr, parthdr, FUNC7(parthdr)) == 0) {
		char *end_part;
		char *end_element;

		char name[32] = { 0 };
		int name_len = 0;
		unsigned long base = 0;
		unsigned long size = 0;

		end_part = FUNC5(ptr, '\n', (end - ptr));
		if (end_part == NULL) {
			/* in theory this should never happen, because a partition always ends with 0x09, 0x0D, 0x0A */
			break;
		}

		for (int i = 0; i <= 4; i++) {
			if (end_part <= ptr)
				break;

			end_element = FUNC5(ptr, 0x20, (end_part - ptr));
			if (end_element == NULL) {
				FUNC1(1, errno, "Ignoring the rest of the partition entries.");
				break;
			}

			switch (i) {
				/* partition header */
				case 0:
					ptr = end_element + 1;
					continue;
				/* name */
				case 1:
					name_len = (end_element - ptr) > 31 ? 31 : (end_element - ptr);
					FUNC8(name, ptr, name_len);
					name[name_len] = '\0';
					ptr = end_element + 1;
					continue;

				/* string "base" */
				case 2:
					ptr = end_element + 1;
					continue;

				/* actual base */
				case 3:
					base = FUNC9(ptr, NULL, 16);
					ptr = end_element + 1;
					continue;

				/* string "size" */
				case 4:
					ptr = end_element + 1;
					/* actual size. The last element doesn't have a sepeartor */
					size = FUNC9(ptr, NULL, 16);
					/* the part ends with 0x09, 0x0d, 0x0a */
					ptr = end_part + 1;
					FUNC0(entries, max_entries, name, base, size);
					continue;
			}
		}
	}

	return 0;
}