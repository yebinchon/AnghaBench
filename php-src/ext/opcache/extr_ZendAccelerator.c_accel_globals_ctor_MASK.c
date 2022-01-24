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
typedef  int /*<<< orphan*/  zend_accel_globals ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(zend_accel_globals *accel_globals)
{
#if defined(COMPILE_DL_OPCACHE) && defined(ZTS)
	ZEND_TSRMLS_CACHE_UPDATE();
#endif
	FUNC1(accel_globals, 0, sizeof(zend_accel_globals));
}