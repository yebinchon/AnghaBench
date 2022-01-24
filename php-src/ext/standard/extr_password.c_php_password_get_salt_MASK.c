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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static zend_string* FUNC3(zval *unused_, size_t required_salt_len, HashTable *options) {
	if (options && FUNC2(options, "salt", sizeof("salt") - 1)) {
		FUNC0(NULL, E_WARNING, "The 'salt' option is no longer supported. The provided salt has been been ignored");
	}

	return FUNC1(required_salt_len);
}