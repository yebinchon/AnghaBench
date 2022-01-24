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
typedef  int /*<<< orphan*/  zend_bool ;
typedef  int /*<<< orphan*/  enum_func_status ;
typedef  int /*<<< orphan*/  MYSQLND_STATS ;
typedef  int /*<<< orphan*/  MYSQLND_ROW_BUFFER ;
typedef  int /*<<< orphan*/  MYSQLND_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const,int /*<<< orphan*/ * const) ; 

enum_func_status
FUNC3(MYSQLND_ROW_BUFFER * row_buffer, zval * fields,
									  const unsigned int field_count, const MYSQLND_FIELD * const fields_metadata,
									  const zend_bool as_int_or_float, MYSQLND_STATS * const stats)
{
	enum_func_status ret;
	FUNC0("php_mysqlnd_rowp_read_text_protocol_c");
	ret = FUNC2(row_buffer, fields, field_count, fields_metadata, as_int_or_float, stats);
	FUNC1(ret);
}