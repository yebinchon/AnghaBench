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
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int /*<<< orphan*/  zend_uchar ;
typedef  int /*<<< orphan*/  MYSQLND_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  DBG_VOID_RETURN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**) ; 

__attribute__((used)) static void
FUNC5(zval * zv, const MYSQLND_FIELD * const field, const unsigned int pack_len, const zend_uchar ** row)
{
	/*
	  For now just copy, before we make it possible
	  to write \0 to the row buffer
	*/
	const zend_ulong length = FUNC4(row);
	FUNC0("ps_fetch_string");
	FUNC2("len = %lu", length);
	FUNC1("copying from the row buffer");
	FUNC3(zv, (char *)*row, length);

	(*row) += length;
	DBG_VOID_RETURN;
}