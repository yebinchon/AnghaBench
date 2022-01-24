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
 int SUCCESS ; 
 int /*<<< orphan*/  configuration_hash ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * php_ini_opened_path ; 
 int /*<<< orphan*/ * php_ini_scanned_files ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(void)
{
	FUNC1(&configuration_hash);
	if (php_ini_opened_path) {
		FUNC0(php_ini_opened_path);
		php_ini_opened_path = NULL;
	}
	if (php_ini_scanned_files) {
		FUNC0(php_ini_scanned_files);
		php_ini_scanned_files = NULL;
	}
	return SUCCESS;
}