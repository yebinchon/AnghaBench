#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_ulong ;
typedef  scalar_t__ zend_uchar ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  t ;
struct st_mysqlnd_time {unsigned int year; unsigned int month; unsigned int day; unsigned int hour; unsigned int minute; unsigned int second; int second_part; void* time_type; scalar_t__ neg; } ;
struct TYPE_3__ {int decimals; } ;
typedef  TYPE_1__ MYSQLND_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  DBG_VOID_RETURN ; 
 void* MYSQLND_TIMESTAMP_DATETIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct st_mysqlnd_time*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char**,int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (scalar_t__ const**) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__ const*) ; 
 scalar_t__ FUNC9 (scalar_t__ const*) ; 

__attribute__((used)) static void
FUNC10(zval * zv, const MYSQLND_FIELD * const field, const unsigned int pack_len, const zend_uchar ** row)
{
	struct st_mysqlnd_time t;
	zend_ulong length; /* First byte encodes the length*/
	char * value;
	FUNC0("ps_fetch_datetime");

	if ((length = FUNC6(row))) {
		const zend_uchar * to = *row;

		t.time_type = MYSQLND_TIMESTAMP_DATETIME;
		t.neg = 0;

		t.year	 = (unsigned int) FUNC8(to);
		t.month = (unsigned int) to[2];
		t.day	 = (unsigned int) to[3];

		if (length > 4) {
			t.hour	 = (unsigned int) to[4];
			t.minute = (unsigned int) to[5];
			t.second = (unsigned int) to[6];
		} else {
			t.hour = t.minute = t.second= 0;
		}
		t.second_part = (length > 7) ? (zend_ulong) FUNC9(to+7) : 0;

		(*row)+= length;
	} else {
		FUNC3(&t, 0, sizeof(t));
		t.time_type = MYSQLND_TIMESTAMP_DATETIME;
	}

    if (field->decimals > 0 && field->decimals < 7) {
    	length = FUNC4(
            &value,
            0,
            "%04u-%02u-%02u %02u:%02u:%02u.%0*u",
            t.year,
            t.month,
            t.day,
            t.hour,
            t.minute,
            t.second,
            field->decimals,
            (uint32_t) (t.second_part / FUNC7(10, 6 - field->decimals))
        );
    } else {
    	length = FUNC4(&value, 0, "%04u-%02u-%02u %02u:%02u:%02u", t.year, t.month, t.day, t.hour, t.minute, t.second);
    }

	FUNC1("%s", value);
	FUNC2(zv, value, length);
	FUNC5(value);
	DBG_VOID_RETURN;
}