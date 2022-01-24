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
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_long ;
typedef  int /*<<< orphan*/  pdo_dbh_t ;

/* Variables and functions */
#define  PDO_ATTR_CLIENT_VERSION 129 
#define  PDO_ATTR_SERVER_VERSION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static int FUNC2(pdo_dbh_t *dbh, zend_long attr, zval *return_value)
{
	switch (attr) {
		case PDO_ATTR_CLIENT_VERSION:
		case PDO_ATTR_SERVER_VERSION:
			FUNC0(return_value, (char *)FUNC1());
			break;

		default:
			return 0;
	}

	return 1;
}