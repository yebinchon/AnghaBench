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
 scalar_t__ zend_extension_startup ; 
 int /*<<< orphan*/  zend_extensions ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int (*) (void*)) ; 

int FUNC1()
{
	FUNC0(&zend_extensions, (int (*)(void *)) zend_extension_startup);
	return SUCCESS;
}