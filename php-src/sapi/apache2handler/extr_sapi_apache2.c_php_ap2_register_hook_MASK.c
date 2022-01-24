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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_HOOK_MIDDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  php_apache_child_init ; 
 int /*<<< orphan*/  php_apache_server_startup ; 
 int /*<<< orphan*/  php_apache_signal_init ; 
 int /*<<< orphan*/  php_handler ; 
 int /*<<< orphan*/  php_pre_config ; 

void FUNC4(apr_pool_t *p)
{
	FUNC3(php_pre_config, NULL, NULL, APR_HOOK_MIDDLE);
	FUNC2(php_apache_server_startup, NULL, NULL, APR_HOOK_MIDDLE);
	FUNC1(php_handler, NULL, NULL, APR_HOOK_MIDDLE);
#ifdef ZEND_SIGNALS
	ap_hook_child_init(php_apache_signal_init, NULL, NULL, APR_HOOK_MIDDLE);
#endif
	FUNC0(php_apache_child_init, NULL, NULL, APR_HOOK_MIDDLE);
}