#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_18__ {int len; int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_16__ {scalar_t__ len; char* data; } ;
struct TYPE_15__ {scalar_t__ content_length_n; } ;
struct TYPE_19__ {TYPE_3__* connection; TYPE_2__ uri; TYPE_1__ headers_in; } ;
typedef  TYPE_5__ ngx_http_request_t ;
struct TYPE_20__ {scalar_t__ min_delete_depth; } ;
typedef  TYPE_6__ ngx_http_dav_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_file_info_t ;
typedef  scalar_t__ ngx_err_t ;
struct TYPE_17__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_EISDIR ; 
 scalar_t__ NGX_ENOTDIR ; 
 scalar_t__ NGX_FILE_ERROR ; 
 scalar_t__ NGX_HTTP_BAD_REQUEST ; 
 scalar_t__ NGX_HTTP_CONFLICT ; 
 scalar_t__ NGX_HTTP_DAV_INFINITY_DEPTH ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_HTTP_NOT_FOUND ; 
 scalar_t__ NGX_HTTP_NO_CONTENT ; 
 scalar_t__ NGX_HTTP_UNSUPPORTED_MEDIA_TYPE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ ngx_errno ; 
 scalar_t__ FUNC0 (TYPE_5__*,TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_dav_module ; 
 TYPE_6__* FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_5__*,TYPE_4__*,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_link_info_n ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_http_request_t *r)
{
    size_t                    root;
    ngx_err_t                 err;
    ngx_int_t                 rc, depth;
    ngx_uint_t                i, d, dir;
    ngx_str_t                 path;
    ngx_file_info_t           fi;
    ngx_http_dav_loc_conf_t  *dlcf;

    if (r->headers_in.content_length_n > 0) {
        FUNC8(NGX_LOG_ERR, r->connection->log, 0,
                      "DELETE with body is unsupported");
        return NGX_HTTP_UNSUPPORTED_MEDIA_TYPE;
    }

    dlcf = FUNC3(r, ngx_http_dav_module);

    if (dlcf->min_delete_depth) {
        d = 0;

        for (i = 0; i < r->uri.len; /* void */) {
            if (r->uri.data[i++] == '/') {
                if (++d >= dlcf->min_delete_depth && i < r->uri.len) {
                    goto ok;
                }
            }
        }

        FUNC8(NGX_LOG_ERR, r->connection->log, 0,
                      "insufficient URI depth:%i to DELETE", d);
        return NGX_HTTP_CONFLICT;
    }

ok:

    if (FUNC4(r, &path, &root, 0) == NULL) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    FUNC7(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http delete filename: \"%s\"", path.data);

    if (FUNC6(path.data, &fi) == NGX_FILE_ERROR) {
        err = ngx_errno;

        rc = (err == NGX_ENOTDIR) ? NGX_HTTP_CONFLICT : NGX_HTTP_NOT_FOUND;

        return FUNC2(r->connection->log, err,
                                  rc, ngx_link_info_n, path.data);
    }

    if (FUNC5(&fi)) {

        if (r->uri.data[r->uri.len - 1] != '/') {
            FUNC8(NGX_LOG_ERR, r->connection->log, NGX_EISDIR,
                          "DELETE \"%s\" failed", path.data);
            return NGX_HTTP_CONFLICT;
        }

        depth = FUNC1(r, NGX_HTTP_DAV_INFINITY_DEPTH);

        if (depth != NGX_HTTP_DAV_INFINITY_DEPTH) {
            FUNC8(NGX_LOG_ERR, r->connection->log, 0,
                          "\"Depth\" header must be infinity");
            return NGX_HTTP_BAD_REQUEST;
        }

        path.len -= 2;  /* omit "/\0" */

        dir = 1;

    } else {

        /*
         * we do not need to test (r->uri.data[r->uri.len - 1] == '/')
         * because ngx_link_info("/file/") returned NGX_ENOTDIR above
         */

        depth = FUNC1(r, 0);

        if (depth != 0 && depth != NGX_HTTP_DAV_INFINITY_DEPTH) {
            FUNC8(NGX_LOG_ERR, r->connection->log, 0,
                          "\"Depth\" header must be 0 or infinity");
            return NGX_HTTP_BAD_REQUEST;
        }

        dir = 0;
    }

    rc = FUNC0(r, &path, dir);

    if (rc == NGX_OK) {
        return NGX_HTTP_NO_CONTENT;
    }

    return rc;
}