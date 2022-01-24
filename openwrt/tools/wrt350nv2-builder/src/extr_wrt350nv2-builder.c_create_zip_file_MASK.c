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
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  DEBUG_LVL2 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char*,size_t,char*,char*,char*) ; 
 int FUNC6 (char*) ; 

int FUNC7(char *zip_filename, char *bin_filename) {
	int exitcode = 0;

	char *buffer;
	size_t buffer_size;
	int count;

	buffer_size = 1000;
	buffer = NULL;
	do {
		// allocate memory for command line
		if (!buffer) {
			buffer = FUNC3(buffer_size);
		}
		if (!buffer) {
			exitcode = 1;
			FUNC4("create_zip_file: can not allocate %i bytes\n", (int) buffer_size);
			break;
		}

		// if buffer was not completely filled, then line fit in completely
		count = FUNC5(buffer, buffer_size, "zip \"%s\" \"%s\"", zip_filename, bin_filename);
		if ((count > -1) && (count < buffer_size)) {
			break;
		}

		// otherwise try again with more space
		if (count > -1) {	// glibc 2.1
			buffer_size = count + 1;	// precisely what is needed
		} else {	// glibc 2.0
			buffer_size *= 2;	// twice the old size
		}
		FUNC1(buffer);
		buffer = NULL;
		FUNC2(DEBUG_LVL2, " extending buffer to %i bytes\n", buffer_size);
	} while (1);

	if (!exitcode) {
		// zipping binfile
		FUNC2(DEBUG, "%s\n", buffer);
		count = FUNC6(buffer);
		if ((count < 0) || (FUNC0(count))) {
			exitcode = 1;
			FUNC4("create_zip_file: can not execute %s bytes\n", buffer);
		}
	}

	return exitcode;
}