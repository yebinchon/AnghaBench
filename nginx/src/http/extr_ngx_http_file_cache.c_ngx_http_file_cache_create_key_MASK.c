#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_10__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_md5_t ;
struct TYPE_11__ {TYPE_2__* connection; TYPE_5__* cache; } ;
typedef  TYPE_4__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  ngx_http_file_cache_key ;
typedef  int /*<<< orphan*/  ngx_http_file_cache_header_t ;
struct TYPE_8__ {size_t nelts; TYPE_3__* elts; } ;
struct TYPE_12__ {int header_start; int /*<<< orphan*/  key; int /*<<< orphan*/  main; int /*<<< orphan*/  crc32; TYPE_1__ keys; } ;
typedef  TYPE_5__ ngx_http_cache_t ;
struct TYPE_9__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_CACHE_KEY_LEN ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(ngx_http_request_t *r)
{
    size_t             len;
    ngx_str_t         *key;
    ngx_uint_t         i;
    ngx_md5_t          md5;
    ngx_http_cache_t  *c;

    c = r->cache;

    len = 0;

    FUNC1(c->crc32);
    FUNC5(&md5);

    key = c->keys.elts;
    for (i = 0; i < c->keys.nelts; i++) {
        FUNC3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "http cache key: \"%V\"", &key[i]);

        len += key[i].len;

        FUNC2(&c->crc32, key[i].data, key[i].len);
        FUNC6(&md5, key[i].data, key[i].len);
    }

    c->header_start = sizeof(ngx_http_file_cache_header_t)
                      + sizeof(ngx_http_file_cache_key) + len + 1;

    FUNC0(c->crc32);
    FUNC4(c->key, &md5);

    FUNC7(c->main, c->key, NGX_HTTP_CACHE_KEY_LEN);
}