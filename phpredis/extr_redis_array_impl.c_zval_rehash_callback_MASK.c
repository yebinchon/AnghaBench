#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_fcall_info_cache ;
struct TYPE_4__ {int param_count; scalar_t__ no_separation; int /*<<< orphan*/ * retval; int /*<<< orphan*/ * params; } ;
typedef  TYPE_1__ zend_fcall_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(zend_fcall_info *z_cb, zend_fcall_info_cache *z_cb_cache,
    zend_string *hostname, long count) {

    zval zv, *z_ret = &zv;

    FUNC3(z_ret);

    zval z_args[2];

    FUNC4(&z_args[0], FUNC1(hostname), FUNC0(hostname));
    FUNC2(&z_args[1], count);

    z_cb->params = z_args;
    z_cb->retval = z_ret;
    
    z_cb->no_separation = 0;
    z_cb->param_count = 2;

    /* run cb(hostname, count) */
    FUNC5(z_cb, z_cb_cache);

    /* cleanup */
    FUNC6(&z_args[0]);
    FUNC6(z_ret);
}