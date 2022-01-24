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
typedef  int /*<<< orphan*/  ngx_thread_cond_t ;
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  scalar_t__ ngx_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

ngx_int_t
FUNC2(ngx_thread_cond_t *cond, ngx_log_t *log)
{
    ngx_err_t  err;

    err = FUNC1(cond);
    if (err == 0) {
        return NGX_OK;
    }

    FUNC0(NGX_LOG_EMERG, log, err, "pthread_cond_signal() failed");
    return NGX_ERROR;
}