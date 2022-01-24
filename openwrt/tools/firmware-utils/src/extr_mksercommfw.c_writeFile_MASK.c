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
struct file_info {scalar_t__ file_size; int /*<<< orphan*/  file_data; int /*<<< orphan*/  file_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct file_info* finfo) {
	FILE* fp;

	if (!finfo || !finfo->file_name) {
		FUNC1("Invalid pointer provided!\n");
		return -1;
	}

	FUNC0("Opening file: %s\n", finfo->file_name);

	if (!(fp = FUNC3(finfo->file_name, "w"))) {
		FUNC1("Error opening file: %s\n", finfo->file_name);
		return -1;
	}

	FUNC0("Writing file: %s\n", finfo->file_name);

	if (FUNC4(finfo->file_data, 1, finfo->file_size, fp) != finfo->file_size) {
		FUNC1("Wanted to write, but something went wrong!\n");
		FUNC2(fp);
		return -1;
	}

	FUNC2(fp);
	return 0;
}