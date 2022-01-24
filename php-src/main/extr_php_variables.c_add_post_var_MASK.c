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
typedef  int zend_bool ;
struct TYPE_4__ {char* ptr; char* end; int already_scanned; } ;
typedef  TYPE_1__ post_var_data_t ;
struct TYPE_5__ {scalar_t__ (* input_filter ) (int /*<<< orphan*/ ,char*,char**,size_t,size_t*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PARSE_POST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,size_t) ; 
 char* FUNC2 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (char*,size_t) ; 
 TYPE_2__ sapi_module ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,char**,size_t,size_t*) ; 

__attribute__((used)) static zend_bool FUNC6(zval *arr, post_var_data_t *var, zend_bool eof)
{
	char *start, *ksep, *vsep, *val;
	size_t klen, vlen;
	size_t new_vlen;

	if (var->ptr >= var->end) {
		return 0;
	}

	start = var->ptr + var->already_scanned;
	vsep = FUNC2(start, '&', var->end - start);
	if (!vsep) {
		if (!eof) {
			var->already_scanned = var->end - var->ptr;
			return 0;
		} else {
			vsep = var->end;
		}
	}

	ksep = FUNC2(var->ptr, '=', vsep - var->ptr);
	if (ksep) {
		*ksep = '\0';
		/* "foo=bar&" or "foo=&" */
		klen = ksep - var->ptr;
		vlen = vsep - ++ksep;
	} else {
		ksep = "";
		/* "foo&" */
		klen = vsep - var->ptr;
		vlen = 0;
	}

	FUNC4(var->ptr, klen);

	val = FUNC1(ksep, vlen);
	if (vlen) {
		vlen = FUNC4(val, vlen);
	}

	if (sapi_module.input_filter(PARSE_POST, var->ptr, &val, vlen, &new_vlen)) {
		FUNC3(var->ptr, val, new_vlen, arr);
	}
	FUNC0(val);

	var->ptr = vsep + (vsep != var->end);
	var->already_scanned = 0;
	return 1;
}