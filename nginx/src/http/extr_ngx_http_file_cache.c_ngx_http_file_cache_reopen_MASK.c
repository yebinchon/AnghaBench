#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_19__ {TYPE_1__* connection; } ;
typedef  TYPE_7__ ngx_http_request_t ;
struct TYPE_20__ {TYPE_3__* shpool; } ;
typedef  TYPE_8__ ngx_http_file_cache_t ;
struct TYPE_16__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_17__ {TYPE_4__ name; int /*<<< orphan*/  log; } ;
struct TYPE_21__ {int secondary; int /*<<< orphan*/  variant; int /*<<< orphan*/  key; TYPE_6__* buf; scalar_t__ body_start; TYPE_5__ file; TYPE_2__* node; TYPE_8__* file_cache; } ;
typedef  TYPE_9__ ngx_http_cache_t ;
struct TYPE_18__ {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_15__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_14__ {int /*<<< orphan*/  count; } ;
struct TYPE_13__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_DECLINED ; 
 int /*<<< orphan*/  NGX_HTTP_CACHE_KEY_LEN ; 
 int /*<<< orphan*/  NGX_LOG_CRIT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_http_request_t *r, ngx_http_cache_t *c)
{
    ngx_http_file_cache_t  *cache;

    FUNC1(NGX_LOG_DEBUG_HTTP, c->file.log, 0,
                   "http file cache reopen");

    if (c->secondary) {
        FUNC2(NGX_LOG_CRIT, r->connection->log, 0,
                      "cache file \"%s\" has incorrect vary hash",
                      c->file.name.data);
        return NGX_DECLINED;
    }

    cache = c->file_cache;

    FUNC4(&cache->shpool->mutex);

    c->node->count--;
    c->node = NULL;

    FUNC5(&cache->shpool->mutex);

    c->secondary = 1;
    c->file.name.len = 0;
    c->body_start = c->buf->end - c->buf->start;

    FUNC3(c->key, c->variant, NGX_HTTP_CACHE_KEY_LEN);

    return FUNC0(r);
}