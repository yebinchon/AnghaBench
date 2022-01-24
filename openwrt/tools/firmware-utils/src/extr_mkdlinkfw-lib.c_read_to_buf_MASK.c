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
struct file_info {int /*<<< orphan*/  file_name; int /*<<< orphan*/  file_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC4 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int FUNC5(const struct file_info *fdata, char *buf)
{
	FILE *f;
	int ret = EXIT_FAILURE;
	size_t read;

	f = FUNC3(fdata->file_name, "r");
	if (f == NULL) {
		FUNC0("could not open \"%s\" for reading", fdata->file_name);
		goto out;
	}

	read = FUNC4(buf, fdata->file_size, 1, f);
	if (FUNC2(f) || read != 1) {
		FUNC0("unable to read from file \"%s\"", fdata->file_name);
		goto out_close;
	}

	ret = EXIT_SUCCESS;

 out_close:
	FUNC1(f);
 out:
	return ret;
}