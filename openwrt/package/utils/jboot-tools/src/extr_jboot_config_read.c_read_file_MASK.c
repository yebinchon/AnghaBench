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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  buffer ; 
 scalar_t__ config_size ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(char *file_name)
{
	int ret = EXIT_FAILURE;
	uint32_t file_size = 0;
	FILE *fp;

	fp = FUNC3(file_name, "r");

	if (!fp) {
		FUNC0("Failed to open config input file %s", file_name);
		goto out;
	}

	FUNC6(fp, 0L, SEEK_END);
	file_size = FUNC7(fp);
	FUNC6(fp, 0L, SEEK_SET);

	buffer = FUNC8(file_size);
	FUNC1("Allocated %d bytes.", file_size);

	if (FUNC4(buffer, 1, file_size, fp) != file_size) {
		FUNC0("Failed to read config input file %s", file_name);
		goto out_free_buf;
	}

	FUNC1("Read %d bytes of config input file %s", file_size, file_name);
	config_size = file_size;
	ret = EXIT_SUCCESS;
	goto out;

 out_free_buf:
	FUNC5(buffer);
	FUNC2(fp);
 out:
	return ret;
}