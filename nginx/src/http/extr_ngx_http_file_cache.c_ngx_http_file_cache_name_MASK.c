#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_11__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {int len; TYPE_1__ name; } ;
typedef  TYPE_5__ ngx_path_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_16__ {TYPE_2__* connection; int /*<<< orphan*/  pool; TYPE_7__* cache; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_13__ {int len; char* data; } ;
struct TYPE_14__ {TYPE_3__ name; } ;
struct TYPE_17__ {TYPE_4__ file; int /*<<< orphan*/  key; } ;
typedef  TYPE_7__ ngx_http_cache_t ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int NGX_HTTP_CACHE_KEY_LEN ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,int) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_http_request_t *r, ngx_path_t *path)
{
    u_char            *p;
    ngx_http_cache_t  *c;

    c = r->cache;

    if (c->file.name.len) {
        return NGX_OK;
    }

    c->file.name.len = path->name.len + 1 + path->len
                       + 2 * NGX_HTTP_CACHE_KEY_LEN;

    c->file.name.data = FUNC4(r->pool, c->file.name.len + 1);
    if (c->file.name.data == NULL) {
        return NGX_ERROR;
    }

    FUNC3(c->file.name.data, path->name.data, path->name.len);

    p = c->file.name.data + path->name.len + 1 + path->len;
    p = FUNC1(p, c->key, NGX_HTTP_CACHE_KEY_LEN);
    *p = '\0';

    FUNC0(path, c->file.name.data, c->file.name.len);

    FUNC2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "cache file: \"%s\"", c->file.name.data);

    return NGX_OK;
}