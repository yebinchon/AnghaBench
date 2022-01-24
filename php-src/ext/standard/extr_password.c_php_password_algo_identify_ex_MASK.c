#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_5__ {int /*<<< orphan*/  (* valid ) (int /*<<< orphan*/  const*) ;} ;
typedef  TYPE_1__ php_password_algo ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

const php_password_algo* FUNC4(const zend_string* hash, const php_password_algo *default_algo) {
	const php_password_algo *algo;
	zend_string *ident = FUNC0(hash);

	if (!ident) {
		return default_algo;
	}

	algo = FUNC1(ident);
	FUNC3(ident);
	return (!algo || (algo->valid && !algo->valid(hash))) ? default_algo : algo;
}