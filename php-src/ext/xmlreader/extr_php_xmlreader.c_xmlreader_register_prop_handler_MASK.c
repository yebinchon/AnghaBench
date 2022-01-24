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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  xmlreader_read_int_t ;
typedef  int /*<<< orphan*/  xmlreader_read_const_char_t ;
struct TYPE_3__ {int type; int /*<<< orphan*/  read_int_func; int /*<<< orphan*/  read_char_func; } ;
typedef  TYPE_1__ xmlreader_prop_handler ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(HashTable *prop_handler, char *name, xmlreader_read_int_t read_int_func, xmlreader_read_const_char_t read_char_func, int rettype)
{
	xmlreader_prop_handler hnd;
	zend_string *str;

	hnd.read_char_func = read_char_func;
	hnd.read_int_func = read_int_func;
	hnd.type = rettype;
	str = FUNC2(name, FUNC0(name), 1);
	FUNC1(prop_handler, str, &hnd, sizeof(xmlreader_prop_handler));
	FUNC3(str, 1);
}