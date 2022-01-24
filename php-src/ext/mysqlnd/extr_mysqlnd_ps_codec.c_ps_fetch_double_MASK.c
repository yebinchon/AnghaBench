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
typedef  int /*<<< orphan*/  zend_uchar ;
typedef  int /*<<< orphan*/  MYSQLND_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,double) ; 
 int /*<<< orphan*/  DBG_VOID_RETURN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC3 (double,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC4(zval * zv, const MYSQLND_FIELD * const field, const unsigned int pack_len, const zend_uchar ** row)
{
	double value;
	FUNC0("ps_fetch_double");
	FUNC3(value, *row);
	FUNC2(zv, value);
	(*row)+= 8;
	FUNC1("value=%f", value);
	DBG_VOID_RETURN;
}