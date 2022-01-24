#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int max_message; int out_queue; int out_cork; int /*<<< orphan*/ * pool; int /*<<< orphan*/  busy; int /*<<< orphan*/  buflen; int /*<<< orphan*/  publish_time_fix; int /*<<< orphan*/  play_time_fix; int /*<<< orphan*/  ack_window; int /*<<< orphan*/  chunk_size; int /*<<< orphan*/  max_streams; int /*<<< orphan*/  so_keepalive; int /*<<< orphan*/  ping_timeout; int /*<<< orphan*/  ping; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_2__ ngx_rtmp_core_srv_conf_t ;
struct TYPE_7__ {TYPE_1__* cycle; } ;
typedef  TYPE_3__ ngx_conf_t ;
struct TYPE_5__ {int /*<<< orphan*/  new_log; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC5(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_core_srv_conf_t *prev = parent;
    ngx_rtmp_core_srv_conf_t *conf = child;

    FUNC0(conf->timeout, prev->timeout, 60000);
    FUNC0(conf->ping, prev->ping, 60000);
    FUNC0(conf->ping_timeout, prev->ping_timeout, 30000);

    FUNC3(conf->so_keepalive, prev->so_keepalive, 0);
    FUNC3(conf->max_streams, prev->max_streams, 32);
    FUNC3(conf->chunk_size, prev->chunk_size, 4096);
    FUNC2(conf->ack_window, prev->ack_window, 5000000);
    FUNC1(conf->max_message, prev->max_message,
            1 * 1024 * 1024);
    FUNC1(conf->out_queue, prev->out_queue, 256);
    FUNC1(conf->out_cork, prev->out_cork,
            conf->out_queue / 8);
    FUNC3(conf->play_time_fix, prev->play_time_fix, 1);
    FUNC3(conf->publish_time_fix, prev->publish_time_fix, 1);
    FUNC0(conf->buflen, prev->buflen, 1000);
    FUNC3(conf->busy, prev->busy, 0);

    if (prev->pool == NULL) {
        prev->pool = FUNC4(4096, &cf->cycle->new_log);
        if (prev->pool == NULL) {
            return NGX_CONF_ERROR;
        }
    }

    conf->pool = prev->pool;

    return NGX_CONF_OK;
}