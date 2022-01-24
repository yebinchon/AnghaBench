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
typedef  int /*<<< orphan*/  const zend_string ;
typedef  int zend_bool ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC2 (int*,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static zend_bool FUNC4(const zend_string *password, const zend_string *hash) {
	size_t i;
	int status = 0;
	zend_string *ret = FUNC2(FUNC1(password), (int)FUNC0(password), FUNC1(hash), (int)FUNC0(hash), 1);

	if (!ret) {
		return 0;
	}

	if (FUNC0(ret) != FUNC0(hash) || FUNC0(hash) < 13) {
		FUNC3(ret);
		return 0;
	}

	/* We're using this method instead of == in order to provide
	 * resistance towards timing attacks. This is a constant time
	 * equality check that will always check every byte of both
	 * values. */
	for (i = 0; i < FUNC0(hash); i++) {
		status |= (FUNC1(ret)[i] ^ FUNC1(hash)[i]);
	}

	FUNC3(ret);
	return status == 0;
}