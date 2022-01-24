#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_13__ {int /*<<< orphan*/ * passwords; int /*<<< orphan*/ * certificate_key_values; int /*<<< orphan*/ * certificate_values; TYPE_2__* certificates; TYPE_1__* certificate_keys; } ;
typedef  TYPE_3__ ngx_http_ssl_srv_conf_t ;
typedef  int /*<<< orphan*/  ngx_http_complex_value_t ;
struct TYPE_14__ {int zero; int /*<<< orphan*/ * complex_value; int /*<<< orphan*/ * value; TYPE_5__* cf; } ;
typedef  TYPE_4__ ngx_http_compile_complex_value_t ;
struct TYPE_15__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_5__ ngx_conf_t ;
struct TYPE_12__ {size_t nelts; int /*<<< orphan*/ * elts; } ;
struct TYPE_11__ {int /*<<< orphan*/ * elts; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 void* FUNC0 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_conf_t *cf,
    ngx_http_ssl_srv_conf_t *conf)
{
    ngx_str_t                         *cert, *key;
    ngx_uint_t                         i, nelts;
    ngx_http_complex_value_t          *cv;
    ngx_http_compile_complex_value_t   ccv;

    cert = conf->certificates->elts;
    key = conf->certificate_keys->elts;
    nelts = conf->certificates->nelts;

    for (i = 0; i < nelts; i++) {

        if (FUNC3(&cert[i])) {
            goto found;
        }

        if (FUNC3(&key[i])) {
            goto found;
        }
    }

    return NGX_OK;

found:

    conf->certificate_values = FUNC0(cf->pool, nelts,
                                             sizeof(ngx_http_complex_value_t));
    if (conf->certificate_values == NULL) {
        return NGX_ERROR;
    }

    conf->certificate_key_values = FUNC0(cf->pool, nelts,
                                             sizeof(ngx_http_complex_value_t));
    if (conf->certificate_key_values == NULL) {
        return NGX_ERROR;
    }

    for (i = 0; i < nelts; i++) {

        cv = FUNC1(conf->certificate_values);
        if (cv == NULL) {
            return NGX_ERROR;
        }

        FUNC4(&ccv, sizeof(ngx_http_compile_complex_value_t));

        ccv.cf = cf;
        ccv.value = &cert[i];
        ccv.complex_value = cv;
        ccv.zero = 1;

        if (FUNC2(&ccv) != NGX_OK) {
            return NGX_ERROR;
        }

        cv = FUNC1(conf->certificate_key_values);
        if (cv == NULL) {
            return NGX_ERROR;
        }

        FUNC4(&ccv, sizeof(ngx_http_compile_complex_value_t));

        ccv.cf = cf;
        ccv.value = &key[i];
        ccv.complex_value = cv;
        ccv.zero = 1;

        if (FUNC2(&ccv) != NGX_OK) {
            return NGX_ERROR;
        }
    }

    conf->passwords = FUNC5(cf, conf->passwords);
    if (conf->passwords == NULL) {
        return NGX_ERROR;
    }

    return NGX_OK;
}