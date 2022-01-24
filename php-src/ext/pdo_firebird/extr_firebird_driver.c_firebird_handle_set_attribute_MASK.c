#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int zend_long ;
typedef  int zend_bool ;
struct TYPE_5__ {char* last_app_error; int fetch_table_names; int /*<<< orphan*/  timestamp_format; int /*<<< orphan*/  time_format; int /*<<< orphan*/  date_format; } ;
typedef  TYPE_1__ pdo_firebird_db_handle ;
struct TYPE_6__ {int auto_commit; int /*<<< orphan*/  in_txn; scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_dbh_t ;

/* Variables and functions */
#define  PDO_ATTR_AUTOCOMMIT 132 
#define  PDO_ATTR_FETCH_TABLE_NAMES 131 
#define  PDO_FB_ATTR_DATE_FORMAT 130 
#define  PDO_FB_ATTR_TIMESTAMP_FORMAT 129 
#define  PDO_FB_ATTR_TIME_FORMAT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(pdo_dbh_t *dbh, zend_long attr, zval *val) /* {{{ */
{
	pdo_firebird_db_handle *H = (pdo_firebird_db_handle *)dbh->driver_data;

	switch (attr) {
		case PDO_ATTR_AUTOCOMMIT:
			{
				zend_bool bval = FUNC6(val)? 1 : 0;

				/* ignore if the new value equals the old one */
				if (dbh->auto_commit ^ bval) {
					if (dbh->in_txn) {
						if (bval) {
							/* turning on auto_commit with an open transaction is illegal, because
							   we won't know what to do with it */
							H->last_app_error = "Cannot enable auto-commit while a transaction is already open";
							return 0;
						} else {
							/* close the transaction */
							if (!FUNC3(dbh)) {
								break;
							}
							dbh->in_txn = 0;
						}
					}
					dbh->auto_commit = bval;
				}
			}
			return 1;

		case PDO_ATTR_FETCH_TABLE_NAMES:
			H->fetch_table_names = FUNC6(val)? 1 : 0;
			return 1;

		case PDO_FB_ATTR_DATE_FORMAT:
			{
				zend_string *str = FUNC7(val);
				if (FUNC0(!str)) {
					return 0;
				}
				if (H->date_format) {
					FUNC2(H->date_format);
				}
				FUNC4(&H->date_format, 0, "%s", FUNC1(str));
				FUNC5(str, 0);
			}
			return 1;

		case PDO_FB_ATTR_TIME_FORMAT:
			{
				zend_string *str = FUNC7(val);
				if (FUNC0(!str)) {
					return 0;
				}
				if (H->time_format) {
					FUNC2(H->time_format);
				}
				FUNC4(&H->time_format, 0, "%s", FUNC1(str));
				FUNC5(str, 0);
			}
			return 1;

		case PDO_FB_ATTR_TIMESTAMP_FORMAT:
			{
				zend_string *str = FUNC7(val);
				if (FUNC0(!str)) {
					return 0;
				}
				if (H->timestamp_format) {
					FUNC2(H->timestamp_format);
				}
				FUNC4(&H->timestamp_format, 0, "%s", FUNC1(str));
				FUNC5(str, 0);
			}
			return 1;
	}
	return 0;
}