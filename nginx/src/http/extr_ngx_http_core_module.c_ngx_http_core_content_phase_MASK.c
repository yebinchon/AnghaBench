#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_13__ {char* data; int len; } ;
struct TYPE_16__ {scalar_t__ (* content_handler ) (TYPE_4__*) ;TYPE_2__* connection; TYPE_1__ uri; int /*<<< orphan*/  phase_handler; int /*<<< orphan*/  write_event_handler; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_17__ {scalar_t__ (* handler ) (TYPE_4__*) ;scalar_t__ checker; } ;
typedef  TYPE_5__ ngx_http_phase_handler_t ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_DECLINED ; 
 scalar_t__ NGX_HTTP_FORBIDDEN ; 
 scalar_t__ NGX_HTTP_NOT_FOUND ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,TYPE_3__*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_request_empty_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 

ngx_int_t
FUNC6(ngx_http_request_t *r,
    ngx_http_phase_handler_t *ph)
{
    size_t     root;
    ngx_int_t  rc;
    ngx_str_t  path;

    if (r->content_handler) {
        r->write_event_handler = ngx_http_request_empty_handler;
        FUNC0(r, r->content_handler(r));
        return NGX_OK;
    }

    FUNC2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "content phase: %ui", r->phase_handler);

    rc = ph->handler(r);

    if (rc != NGX_DECLINED) {
        FUNC0(r, rc);
        return NGX_OK;
    }

    /* rc == NGX_DECLINED */

    ph++;

    if (ph->checker) {
        r->phase_handler++;
        return NGX_AGAIN;
    }

    /* no content handler was found */

    if (r->uri.data[r->uri.len - 1] == '/') {

        if (FUNC1(r, &path, &root, 0) != NULL) {
            FUNC3(NGX_LOG_ERR, r->connection->log, 0,
                          "directory index of \"%s\" is forbidden", path.data);
        }

        FUNC0(r, NGX_HTTP_FORBIDDEN);
        return NGX_OK;
    }

    FUNC3(NGX_LOG_ERR, r->connection->log, 0, "no handler found");

    FUNC0(r, NGX_HTTP_NOT_FOUND);
    return NGX_OK;
}