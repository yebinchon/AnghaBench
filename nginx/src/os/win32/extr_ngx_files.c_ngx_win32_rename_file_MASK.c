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
typedef  int /*<<< orphan*/  u_char ;
typedef  int ngx_uint_t ;
struct TYPE_4__ {int len; scalar_t__ data; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  scalar_t__ ngx_err_t ;
typedef  int /*<<< orphan*/  ngx_atomic_uint_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int NGX_ATOMIC_T_LEN ; 
 scalar_t__ NGX_ENOMEM ; 
 int /*<<< orphan*/  NGX_LOG_CRIT ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ ngx_errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

ngx_err_t
FUNC8(ngx_str_t *from, ngx_str_t *to, ngx_log_t *log)
{
    u_char             *name;
    ngx_err_t           err;
    ngx_uint_t          collision;
    ngx_atomic_uint_t   num;

    name = FUNC2(to->len + 1 + NGX_ATOMIC_T_LEN + 1 + sizeof("DELETE"),
                     log);
    if (name == NULL) {
        return NGX_ENOMEM;
    }

    FUNC5(name, to->data, to->len);

    collision = 0;

    /* mutex_lock() (per cache or single ?) */

    for ( ;; ) {
        num = FUNC6(collision);

        FUNC7(name + to->len, ".%0muA.DELETE%Z", num);

        if (FUNC1((const char *) to->data, (const char *) name) != 0) {
            break;
        }

        collision = 1;

        FUNC4(NGX_LOG_CRIT, log, ngx_errno,
                      "MoveFile() \"%s\" to \"%s\" failed", to->data, name);
    }

    if (FUNC1((const char *) from->data, (const char *) to->data) == 0) {
        err = ngx_errno;

    } else {
        err = 0;
    }

    if (FUNC0((const char *) name) == 0) {
        FUNC4(NGX_LOG_CRIT, log, ngx_errno,
                      "DeleteFile() \"%s\" failed", name);
    }

    /* mutex_unlock() */

    FUNC3(name);

    return err;
}