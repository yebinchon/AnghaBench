#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_10__ {int /*<<< orphan*/  log; int /*<<< orphan*/  mtime; int /*<<< orphan*/  access; int /*<<< orphan*/  size; TYPE_4__* data; } ;
typedef  TYPE_2__ ngx_tree_ctx_t ;
struct TYPE_11__ {size_t len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_9__ {size_t len; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {size_t len; TYPE_1__ path; } ;
typedef  TYPE_4__ ngx_http_dav_copy_ctx_t ;
struct TYPE_13__ {int /*<<< orphan*/  log; int /*<<< orphan*/  time; int /*<<< orphan*/  access; scalar_t__ buf_size; int /*<<< orphan*/  size; } ;
typedef  TYPE_5__ ngx_copy_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ABORT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_tree_ctx_t *ctx, ngx_str_t *path)
{
    u_char                   *p, *file;
    size_t                    len;
    ngx_copy_file_t           cf;
    ngx_http_dav_copy_ctx_t  *copy;

    FUNC5(NGX_LOG_DEBUG_HTTP, ctx->log, 0,
                   "http copy file: \"%s\"", path->data);

    copy = ctx->data;

    len = copy->path.len + path->len;

    file = FUNC0(len + 1, ctx->log);
    if (file == NULL) {
        return NGX_ABORT;
    }

    p = FUNC2(file, copy->path.data, copy->path.len);
    (void) FUNC3(p, path->data + copy->len, path->len - copy->len + 1);

    FUNC5(NGX_LOG_DEBUG_HTTP, ctx->log, 0,
                   "http copy file to: \"%s\"", file);

    cf.size = ctx->size;
    cf.buf_size = 0;
    cf.access = ctx->access;
    cf.time = ctx->mtime;
    cf.log = ctx->log;

    (void) FUNC1(path->data, file, &cf);

    FUNC4(file);

    return NGX_OK;
}