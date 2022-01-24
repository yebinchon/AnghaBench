#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  idle_timeout; int /*<<< orphan*/  recv_timeout; int /*<<< orphan*/  streams_index_mask; int /*<<< orphan*/  preread_size; int /*<<< orphan*/  max_header_size; int /*<<< orphan*/  max_field_size; int /*<<< orphan*/  max_requests; int /*<<< orphan*/  concurrent_pushes; int /*<<< orphan*/  concurrent_streams; int /*<<< orphan*/  pool_size; } ;
typedef  TYPE_1__ ngx_http_v2_srv_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static char *
FUNC3(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_v2_srv_conf_t *prev = parent;
    ngx_http_v2_srv_conf_t *conf = child;

    FUNC1(conf->pool_size, prev->pool_size, 4096);

    FUNC2(conf->concurrent_streams,
                              prev->concurrent_streams, 128);
    FUNC2(conf->concurrent_pushes,
                              prev->concurrent_pushes, 10);
    FUNC2(conf->max_requests, prev->max_requests, 1000);

    FUNC1(conf->max_field_size, prev->max_field_size,
                              4096);
    FUNC1(conf->max_header_size, prev->max_header_size,
                              16384);

    FUNC1(conf->preread_size, prev->preread_size, 65536);

    FUNC2(conf->streams_index_mask,
                              prev->streams_index_mask, 32 - 1);

    FUNC0(conf->recv_timeout,
                              prev->recv_timeout, 30000);
    FUNC0(conf->idle_timeout,
                              prev->idle_timeout, 180000);

    return NGX_CONF_OK;
}