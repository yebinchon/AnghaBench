#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int next_upstream; int /*<<< orphan*/ * upstream; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  next_upstream_timeout; int /*<<< orphan*/  read_timeout; int /*<<< orphan*/  send_timeout; int /*<<< orphan*/  connect_timeout; int /*<<< orphan*/  next_upstream_tries; int /*<<< orphan*/  socket_keepalive; int /*<<< orphan*/  local; } ;
struct TYPE_4__ {scalar_t__ index; int /*<<< orphan*/  gzip_flag; TYPE_1__ upstream; } ;
typedef  TYPE_2__ ngx_http_memcached_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 int NGX_CONF_BITMASK_SET ; 
 char* NGX_CONF_OK ; 
 scalar_t__ NGX_CONF_UNSET ; 
 int NGX_HTTP_UPSTREAM_FT_ERROR ; 
 int NGX_HTTP_UPSTREAM_FT_OFF ; 
 int NGX_HTTP_UPSTREAM_FT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ngx_pagesize ; 

__attribute__((used)) static char *
FUNC6(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_memcached_loc_conf_t *prev = parent;
    ngx_http_memcached_loc_conf_t *conf = child;

    FUNC2(conf->upstream.local,
                              prev->upstream.local, NULL);

    FUNC5(conf->upstream.socket_keepalive,
                              prev->upstream.socket_keepalive, 0);

    FUNC4(conf->upstream.next_upstream_tries,
                              prev->upstream.next_upstream_tries, 0);

    FUNC1(conf->upstream.connect_timeout,
                              prev->upstream.connect_timeout, 60000);

    FUNC1(conf->upstream.send_timeout,
                              prev->upstream.send_timeout, 60000);

    FUNC1(conf->upstream.read_timeout,
                              prev->upstream.read_timeout, 60000);

    FUNC1(conf->upstream.next_upstream_timeout,
                              prev->upstream.next_upstream_timeout, 0);

    FUNC3(conf->upstream.buffer_size,
                              prev->upstream.buffer_size,
                              (size_t) ngx_pagesize);

    FUNC0(conf->upstream.next_upstream,
                              prev->upstream.next_upstream,
                              (NGX_CONF_BITMASK_SET
                               |NGX_HTTP_UPSTREAM_FT_ERROR
                               |NGX_HTTP_UPSTREAM_FT_TIMEOUT));

    if (conf->upstream.next_upstream & NGX_HTTP_UPSTREAM_FT_OFF) {
        conf->upstream.next_upstream = NGX_CONF_BITMASK_SET
                                       |NGX_HTTP_UPSTREAM_FT_OFF;
    }

    if (conf->upstream.upstream == NULL) {
        conf->upstream.upstream = prev->upstream.upstream;
    }

    if (conf->index == NGX_CONF_UNSET) {
        conf->index = prev->index;
    }

    FUNC4(conf->gzip_flag, prev->gzip_flag, 0);

    return NGX_CONF_OK;
}