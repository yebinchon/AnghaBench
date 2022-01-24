#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_12__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_13__ {TYPE_4__* data; int /*<<< orphan*/  handler; } ;
typedef  TYPE_2__ ngx_pool_cleanup_t ;
struct TYPE_14__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_conf_t ;
struct TYPE_15__ {size_t nelts; TYPE_1__* elts; } ;
typedef  TYPE_4__ ngx_array_t ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ,size_t,int) ; 
 TYPE_1__* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_ssl_passwords_cleanup ; 

ngx_array_t *
FUNC5(ngx_conf_t *cf, ngx_array_t *passwords)
{
    ngx_str_t           *opwd, *pwd;
    ngx_uint_t           i;
    ngx_array_t         *pwds;
    ngx_pool_cleanup_t  *cln;
    static ngx_array_t   empty_passwords;

    if (passwords == NULL) {

        /*
         * If there are no passwords, an empty array is used
         * to make sure OpenSSL's default password callback
         * won't block on reading from stdin.
         */

        return &empty_passwords;
    }

    /*
     * Passwords are normally allocated from the temporary pool
     * and cleared after parsing configuration.  To be used at
     * runtime they have to be copied to the configuration pool.
     */

    pwds = FUNC0(cf->pool, passwords->nelts, sizeof(ngx_str_t));
    if (pwds == NULL) {
        return NULL;
    }

    cln = FUNC4(cf->pool, 0);
    if (cln == NULL) {
        return NULL;
    }

    cln->handler = ngx_ssl_passwords_cleanup;
    cln->data = pwds;

    opwd = passwords->elts;

    for (i = 0; i < passwords->nelts; i++) {

        pwd = FUNC1(pwds);
        if (pwd == NULL) {
            return NULL;
        }

        pwd->len = opwd[i].len;
        pwd->data = FUNC3(cf->pool, pwd->len);

        if (pwd->data == NULL) {
            pwds->nelts--;
            return NULL;
        }

        FUNC2(pwd->data, opwd[i].data, opwd[i].len);
    }

    return pwds;
}