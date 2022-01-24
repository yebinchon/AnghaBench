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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int zend_bool ;
struct reserved_class_name {size_t len; scalar_t__ name; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*) ; 
 struct reserved_class_name* reserved_class_names ; 
 scalar_t__ FUNC2 (char const*,size_t,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char const**,size_t*) ; 

__attribute__((used)) static zend_bool FUNC4(const zend_string *name) /* {{{ */
{
	const struct reserved_class_name *reserved = reserved_class_names;

	const char *uqname = FUNC1(name);
	size_t uqname_len = FUNC0(name);
	FUNC3(name, &uqname, &uqname_len);

	for (; reserved->name; ++reserved) {
		if (uqname_len == reserved->len
			&& FUNC2(uqname, uqname_len, reserved->name, reserved->len) == 0
		) {
			return 1;
		}
	}

	return 0;
}