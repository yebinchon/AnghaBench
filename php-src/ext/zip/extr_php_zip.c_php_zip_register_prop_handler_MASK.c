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
typedef  int /*<<< orphan*/  zip_read_int_t ;
typedef  int /*<<< orphan*/  zip_read_const_char_t ;
typedef  int /*<<< orphan*/  zip_read_const_char_from_ze_t ;
struct TYPE_3__ {int type; int /*<<< orphan*/  read_const_char_from_obj_func; int /*<<< orphan*/  read_int_func; int /*<<< orphan*/  read_const_char_func; } ;
typedef  TYPE_1__ zip_prop_handler ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  ZEND_ACC_PUBLIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  zip_class_entry ; 

__attribute__((used)) static void FUNC6(HashTable *prop_handler, char *name, zip_read_int_t read_int_func, zip_read_const_char_t read_char_func, zip_read_const_char_from_ze_t read_char_from_obj_func, int rettype) /* {{{ */
{
	zip_prop_handler hnd;
	zend_string *str;
	zval tmp;

	hnd.read_const_char_func = read_char_func;
	hnd.read_int_func = read_int_func;
	hnd.read_const_char_from_obj_func = read_char_from_obj_func;
	hnd.type = rettype;
	str = FUNC4(name, FUNC1(name), 1);
	FUNC3(prop_handler, str, &hnd, sizeof(zip_prop_handler));

	/* Register for reflection */
	FUNC0(&tmp);
	FUNC2(zip_class_entry, str, &tmp, ZEND_ACC_PUBLIC, NULL);
	FUNC5(str, 1);
}