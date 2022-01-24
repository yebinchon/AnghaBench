#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_long ;
struct TYPE_4__ {int /*<<< orphan*/  datetime_convert; int /*<<< orphan*/  skip_empty_rowsets; int /*<<< orphan*/  link; int /*<<< orphan*/  stringify_uniqueidentifier; int /*<<< orphan*/  assume_national_character_set_strings; } ;
typedef  TYPE_1__ pdo_dblib_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_dbh_t ;

/* Variables and functions */
#define  PDO_ATTR_DEFAULT_STR_PARAM 134 
#define  PDO_ATTR_EMULATE_PREPARES 133 
#define  PDO_DBLIB_ATTR_DATETIME_CONVERT 132 
#define  PDO_DBLIB_ATTR_SKIP_EMPTY_ROWSETS 131 
#define  PDO_DBLIB_ATTR_STRINGIFY_UNIQUEIDENTIFIER 130 
#define  PDO_DBLIB_ATTR_TDS_VERSION 129 
#define  PDO_DBLIB_ATTR_VERSION 128 
 int /*<<< orphan*/  PDO_PARAM_STR_CHAR ; 
 int /*<<< orphan*/  PDO_PARAM_STR_NATL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(pdo_dbh_t *dbh, zend_long attr, zval *return_value)
{
	pdo_dblib_db_handle *H = (pdo_dblib_db_handle *)dbh->driver_data;

	switch (attr) {
		case PDO_ATTR_DEFAULT_STR_PARAM:
			FUNC1(return_value, H->assume_national_character_set_strings ? PDO_PARAM_STR_NATL : PDO_PARAM_STR_CHAR);
			break;

		case PDO_ATTR_EMULATE_PREPARES:
			/* this is the only option available, but expose it so common tests and whatever else can introspect */
			FUNC3(return_value);
			break;

		case PDO_DBLIB_ATTR_STRINGIFY_UNIQUEIDENTIFIER:
			FUNC0(return_value, H->stringify_uniqueidentifier);
			break;

		case PDO_DBLIB_ATTR_VERSION:
			FUNC2(return_value, FUNC6());
			break;

		case PDO_DBLIB_ATTR_TDS_VERSION:
			FUNC4(return_value, FUNC5(H->link));
			break;

		case PDO_DBLIB_ATTR_SKIP_EMPTY_ROWSETS:
			FUNC0(return_value, H->skip_empty_rowsets);
			break;

		case PDO_DBLIB_ATTR_DATETIME_CONVERT:
			FUNC0(return_value, H->datetime_convert);
			break;

		default:
			return 0;
	}

	return 1;
}