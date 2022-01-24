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
typedef  int /*<<< orphan*/  zend_file_handle ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FAILURE ; 
 int SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3(zend_file_handle *file_handle, char *script_file)
{
	FILE *fp = FUNC0(script_file, "rb");
	if (!fp) {
		FUNC1("Could not open input file: %s\n", script_file);
		return FAILURE;
	}

	FUNC2(file_handle, fp, script_file);
	return SUCCESS;
}