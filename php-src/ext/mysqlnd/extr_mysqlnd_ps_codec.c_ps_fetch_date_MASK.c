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
typedef  scalar_t__ zend_ulong ;
typedef  scalar_t__ zend_uchar ;
typedef  int /*<<< orphan*/  t ;
struct st_mysqlnd_time {unsigned int year; unsigned int month; unsigned int day; void* time_type; scalar_t__ second; scalar_t__ minute; scalar_t__ hour; scalar_t__ second_part; scalar_t__ neg; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  MYSQLND_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  DBG_VOID_RETURN ; 
 void* MYSQLND_TIMESTAMP_DATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct st_mysqlnd_time*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char**,int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (scalar_t__ const**) ; 
 scalar_t__ FUNC7 (scalar_t__ const*) ; 

__attribute__((used)) static void
FUNC8(zval * zv, const MYSQLND_FIELD * const field, const unsigned int pack_len, const zend_uchar ** row)
{
	struct st_mysqlnd_time t = {0};
	zend_ulong length; /* First byte encodes the length*/
	char * value;
	FUNC0("ps_fetch_date");

	if ((length = FUNC6(row))) {
		const zend_uchar * to = *row;

		t.time_type = MYSQLND_TIMESTAMP_DATE;
		t.neg = 0;

		t.second_part = t.hour = t.minute = t.second = 0;

		t.year	= (unsigned int) FUNC7(to);
		t.month = (unsigned int) to[2];
		t.day	= (unsigned int) to[3];

		(*row)+= length;
	} else {
		FUNC3(&t, 0, sizeof(t));
		t.time_type = MYSQLND_TIMESTAMP_DATE;
	}

	length = FUNC4(&value, 0, "%04u-%02u-%02u", t.year, t.month, t.day);

	FUNC1("%s", value);
	FUNC2(zv, value, length);
	FUNC5(value);
	DBG_VOID_RETURN;
}