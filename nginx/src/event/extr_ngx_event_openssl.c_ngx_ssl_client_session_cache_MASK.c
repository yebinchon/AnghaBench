#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_uint_t ;
struct TYPE_3__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ ngx_ssl_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int SSL_SESS_CACHE_CLIENT ; 
 int SSL_SESS_CACHE_NO_INTERNAL ; 
 int /*<<< orphan*/  ngx_ssl_new_client_session ; 

ngx_int_t
FUNC2(ngx_conf_t *cf, ngx_ssl_t *ssl, ngx_uint_t enable)
{
    if (!enable) {
        return NGX_OK;
    }

    FUNC1(ssl->ctx,
                                   SSL_SESS_CACHE_CLIENT
                                   |SSL_SESS_CACHE_NO_INTERNAL);

    FUNC0(ssl->ctx, ngx_ssl_new_client_session);

    return NGX_OK;
}