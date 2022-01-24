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
 char* file_name ; 
 int /*<<< orphan*/  test_anon ; 
 int /*<<< orphan*/  test_file ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 

int FUNC1(int argc, char *argv[])
{
	int rc;

	rc = FUNC0(test_anon, "subpage_prot_anon");
	if (rc)
		return rc;

	if (argc > 1)
		file_name = argv[1];
	else
		file_name = "tempfile";

	return FUNC0(test_file, "subpage_prot_file");
}