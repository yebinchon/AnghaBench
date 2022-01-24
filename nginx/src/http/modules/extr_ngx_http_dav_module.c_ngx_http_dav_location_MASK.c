#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_15__ {TYPE_7__* location; int /*<<< orphan*/  headers; } ;
struct TYPE_13__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_16__ {TYPE_4__ headers_out; TYPE_2__ uri; int /*<<< orphan*/  pool; } ;
typedef  TYPE_5__ ngx_http_request_t ;
struct TYPE_12__ {int len; } ;
struct TYPE_17__ {TYPE_1__ root; int /*<<< orphan*/ * root_lengths; int /*<<< orphan*/  alias; } ;
typedef  TYPE_6__ ngx_http_core_loc_conf_t ;
struct TYPE_14__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  len; } ;
struct TYPE_18__ {int hash; TYPE_3__ value; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_6__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_http_request_t *r, u_char *path)
{
    u_char                    *location;
    ngx_http_core_loc_conf_t  *clcf;

    r->headers_out.location = FUNC2(&r->headers_out.headers);
    if (r->headers_out.location == NULL) {
        return NGX_ERROR;
    }

    clcf = FUNC1(r, ngx_http_core_module);

    if (!clcf->alias && clcf->root_lengths == NULL) {
        location = path + clcf->root.len;

    } else {
        location = FUNC4(r->pool, r->uri.len);
        if (location == NULL) {
            FUNC0(r);
            return NGX_ERROR;
        }

        FUNC3(location, r->uri.data, r->uri.len);
    }

    r->headers_out.location->hash = 1;
    FUNC5(&r->headers_out.location->key, "Location");
    r->headers_out.location->value.len = r->uri.len;
    r->headers_out.location->value.data = location;

    return NGX_OK;
}