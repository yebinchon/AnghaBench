#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {char* (* read_const_char_func ) (int /*<<< orphan*/ *,int*) ;int (* read_int_func ) (int /*<<< orphan*/ *) ;char* (* read_const_char_from_obj_func ) (TYPE_2__*) ;int type; } ;
typedef  TYPE_1__ zip_prop_handler ;
typedef  int zend_long ;
struct TYPE_7__ {int /*<<< orphan*/ * za; } ;
typedef  TYPE_2__ ze_zip_object ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
#define  IS_FALSE 130 
#define  IS_LONG 129 
#define  IS_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (char const*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static zval *FUNC10(ze_zip_object *obj, zip_prop_handler *hnd, zval *rv) /* {{{ */
{
	const char *retchar = NULL;
	zend_long retint = 0;
	int len = 0;

	if (obj && obj->za != NULL) {
		if (hnd->read_const_char_func) {
			retchar = hnd->read_const_char_func(obj->za, &len);
		} else {
			if (hnd->read_int_func) {
				retint = hnd->read_int_func(obj->za);
				if (retint == -1) {
					FUNC5(NULL, E_WARNING, "Internal zip error returned");
					return NULL;
				}
			} else {
				if (hnd->read_const_char_from_obj_func) {
					retchar = hnd->read_const_char_from_obj_func(obj);
					len = FUNC6(retchar);
				}
			}
		}
	}

	switch (hnd->type) {
		case IS_STRING:
			if (retchar) {
				FUNC4(rv, (char *) retchar, len);
			} else {
				FUNC1(rv);
			}
			break;
		/* case IS_TRUE */
		case IS_FALSE:
			FUNC0(rv, retint);
			break;
		case IS_LONG:
			FUNC2(rv, retint);
			break;
		default:
			FUNC3(rv);
	}

	return rv;
}