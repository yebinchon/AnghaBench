#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ time_t ;
typedef  size_t ngx_uint_t ;
struct TYPE_20__ {size_t len; int /*<<< orphan*/ * data; } ;
struct TYPE_17__ {int hash; TYPE_5__ value; TYPE_5__ key; } ;
typedef  TYPE_2__ ngx_table_elt_t ;
typedef  int /*<<< orphan*/  ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_15__ {size_t nelts; TYPE_2__** elts; } ;
struct TYPE_16__ {int last_modified_time; TYPE_12__ cache_control; int /*<<< orphan*/  headers; TYPE_2__* expires; } ;
struct TYPE_18__ {int /*<<< orphan*/  pool; TYPE_1__ headers_out; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_19__ {scalar_t__ expires; scalar_t__ expires_time; int /*<<< orphan*/ * expires_value; } ;
typedef  TYPE_4__ ngx_http_headers_conf_t ;
typedef  scalar_t__ ngx_http_expires_t ;
struct TYPE_14__ {scalar_t__ len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_EXPIRES_ACCESS ; 
 scalar_t__ NGX_HTTP_EXPIRES_DAILY ; 
 scalar_t__ NGX_HTTP_EXPIRES_EPOCH ; 
 scalar_t__ NGX_HTTP_EXPIRES_MAX ; 
 scalar_t__ NGX_HTTP_EXPIRES_OFF ; 
 scalar_t__ NGX_OK ; 
 int NGX_TIME_T_LEN ; 
 scalar_t__ FUNC0 (TYPE_12__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__** FUNC1 (TYPE_12__*) ; 
 TYPE_10__ ngx_cached_http_time ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*) ; 
 scalar_t__ FUNC11 () ; 

__attribute__((used)) static ngx_int_t
FUNC12(ngx_http_request_t *r, ngx_http_headers_conf_t *conf)
{
    char                *err;
    size_t               len;
    time_t               now, expires_time, max_age;
    ngx_str_t            value;
    ngx_int_t            rc;
    ngx_uint_t           i;
    ngx_table_elt_t     *e, *cc, **ccp;
    ngx_http_expires_t   expires;

    expires = conf->expires;
    expires_time = conf->expires_time;

    if (conf->expires_value != NULL) {

        if (FUNC2(r, conf->expires_value, &value) != NGX_OK) {
            return NGX_ERROR;
        }

        rc = FUNC3(&value, &expires, &expires_time, &err);

        if (rc != NGX_OK) {
            return NGX_OK;
        }

        if (expires == NGX_HTTP_EXPIRES_OFF) {
            return NGX_OK;
        }
    }

    e = r->headers_out.expires;

    if (e == NULL) {

        e = FUNC5(&r->headers_out.headers);
        if (e == NULL) {
            return NGX_ERROR;
        }

        r->headers_out.expires = e;

        e->hash = 1;
        FUNC10(&e->key, "Expires");
    }

    len = sizeof("Mon, 28 Sep 1970 06:00:00 GMT");
    e->value.len = len - 1;

    ccp = r->headers_out.cache_control.elts;

    if (ccp == NULL) {

        if (FUNC0(&r->headers_out.cache_control, r->pool,
                           1, sizeof(ngx_table_elt_t *))
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        cc = FUNC5(&r->headers_out.headers);
        if (cc == NULL) {
            return NGX_ERROR;
        }

        cc->hash = 1;
        FUNC10(&cc->key, "Cache-Control");

        ccp = FUNC1(&r->headers_out.cache_control);
        if (ccp == NULL) {
            return NGX_ERROR;
        }

        *ccp = cc;

    } else {
        for (i = 1; i < r->headers_out.cache_control.nelts; i++) {
            ccp[i]->hash = 0;
        }

        cc = ccp[0];
    }

    if (expires == NGX_HTTP_EXPIRES_EPOCH) {
        e->value.data = (u_char *) "Thu, 01 Jan 1970 00:00:01 GMT";
        FUNC10(&cc->value, "no-cache");
        return NGX_OK;
    }

    if (expires == NGX_HTTP_EXPIRES_MAX) {
        e->value.data = (u_char *) "Thu, 31 Dec 2037 23:55:55 GMT";
        /* 10 years */
        FUNC10(&cc->value, "max-age=315360000");
        return NGX_OK;
    }

    e->value.data = FUNC8(r->pool, len);
    if (e->value.data == NULL) {
        return NGX_ERROR;
    }

    if (expires_time == 0 && expires != NGX_HTTP_EXPIRES_DAILY) {
        FUNC6(e->value.data, ngx_cached_http_time.data,
                   ngx_cached_http_time.len + 1);
        FUNC10(&cc->value, "max-age=0");
        return NGX_OK;
    }

    now = FUNC11();

    if (expires == NGX_HTTP_EXPIRES_DAILY) {
        expires_time = FUNC7(expires_time);
        max_age = expires_time - now;

    } else if (expires == NGX_HTTP_EXPIRES_ACCESS
               || r->headers_out.last_modified_time == -1)
    {
        max_age = expires_time;
        expires_time += now;

    } else {
        expires_time += r->headers_out.last_modified_time;
        max_age = expires_time - now;
    }

    FUNC4(e->value.data, expires_time);

    if (conf->expires_time < 0 || max_age < 0) {
        FUNC10(&cc->value, "no-cache");
        return NGX_OK;
    }

    cc->value.data = FUNC8(r->pool,
                                 sizeof("max-age=") + NGX_TIME_T_LEN + 1);
    if (cc->value.data == NULL) {
        return NGX_ERROR;
    }

    cc->value.len = FUNC9(cc->value.data, "max-age=%T", max_age)
                    - cc->value.data;

    return NGX_OK;
}