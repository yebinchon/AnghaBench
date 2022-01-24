#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_2__ {scalar_t__ (* input_filter ) (int /*<<< orphan*/ ,char*,char**,int /*<<< orphan*/ ,size_t*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PARSE_SERVER ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t,int /*<<< orphan*/ *) ; 
 TYPE_1__ sapi_module ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,char**,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static void FUNC3(zval *track_vars_array, const char *key, const char *val) /* {{{ */
{
	char *new_val = (char *)val;
	size_t new_val_len;

	if (NULL == val) {
		return;
	}

	if (sapi_module.input_filter(PARSE_SERVER, (char*)key, &new_val, FUNC1(val), &new_val_len)) {
		FUNC0((char *)key, new_val, new_val_len, track_vars_array);
	}
}