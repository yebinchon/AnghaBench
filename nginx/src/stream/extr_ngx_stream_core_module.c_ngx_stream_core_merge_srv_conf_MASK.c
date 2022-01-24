#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  preread_timeout; int /*<<< orphan*/  preread_buffer_size; int /*<<< orphan*/  tcp_nodelay; int /*<<< orphan*/  proxy_protocol_timeout; int /*<<< orphan*/ * error_log; int /*<<< orphan*/  line; int /*<<< orphan*/  file_name; int /*<<< orphan*/ * handler; int /*<<< orphan*/ * resolver; int /*<<< orphan*/  resolver_timeout; } ;
typedef  TYPE_2__ ngx_stream_core_srv_conf_t ;
struct TYPE_8__ {TYPE_1__* cycle; int /*<<< orphan*/  log; } ;
typedef  TYPE_3__ ngx_conf_t ;
struct TYPE_6__ {int /*<<< orphan*/  new_log; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC5(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_stream_core_srv_conf_t *prev = parent;
    ngx_stream_core_srv_conf_t *conf = child;

    FUNC0(conf->resolver_timeout,
                              prev->resolver_timeout, 30000);

    if (conf->resolver == NULL) {

        if (prev->resolver == NULL) {

            /*
             * create dummy resolver in stream {} context
             * to inherit it in all servers
             */

            prev->resolver = FUNC4(cf, NULL, 0);
            if (prev->resolver == NULL) {
                return NGX_CONF_ERROR;
            }
        }

        conf->resolver = prev->resolver;
    }

    if (conf->handler == NULL) {
        FUNC3(NGX_LOG_EMERG, cf->log, 0,
                      "no handler for server in %s:%ui",
                      conf->file_name, conf->line);
        return NGX_CONF_ERROR;
    }

    if (conf->error_log == NULL) {
        if (prev->error_log) {
            conf->error_log = prev->error_log;
        } else {
            conf->error_log = &cf->cycle->new_log;
        }
    }

    FUNC0(conf->proxy_protocol_timeout,
                              prev->proxy_protocol_timeout, 30000);

    FUNC2(conf->tcp_nodelay, prev->tcp_nodelay, 1);

    FUNC1(conf->preread_buffer_size,
                              prev->preread_buffer_size, 16384);

    FUNC0(conf->preread_timeout,
                              prev->preread_timeout, 30000);

    return NGX_CONF_OK;
}