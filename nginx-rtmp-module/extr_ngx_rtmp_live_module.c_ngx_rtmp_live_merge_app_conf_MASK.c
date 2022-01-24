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
typedef  int /*<<< orphan*/  ngx_rtmp_live_stream_t ;
struct TYPE_6__ {int live; int nbuckets; int interleave; int wait_key; int wait_video; int publish_notify; int play_restart; int idle_streams; int /*<<< orphan*/  streams; int /*<<< orphan*/ * pool; int /*<<< orphan*/  idle_timeout; int /*<<< orphan*/  sync; int /*<<< orphan*/  buflen; } ;
typedef  TYPE_2__ ngx_rtmp_live_app_conf_t ;
struct TYPE_7__ {int /*<<< orphan*/  pool; TYPE_1__* cycle; } ;
typedef  TYPE_3__ ngx_conf_t ;
struct TYPE_5__ {int /*<<< orphan*/  new_log; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static char *
FUNC4(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_live_app_conf_t *prev = parent;
    ngx_rtmp_live_app_conf_t *conf = child;

    FUNC1(conf->live, prev->live, 0);
    FUNC1(conf->nbuckets, prev->nbuckets, 1024);
    FUNC0(conf->buflen, prev->buflen, 0);
    FUNC0(conf->sync, prev->sync, 300);
    FUNC0(conf->idle_timeout, prev->idle_timeout, 0);
    FUNC1(conf->interleave, prev->interleave, 0);
    FUNC1(conf->wait_key, prev->wait_key, 1);
    FUNC1(conf->wait_video, prev->wait_video, 0);
    FUNC1(conf->publish_notify, prev->publish_notify, 0);
    FUNC1(conf->play_restart, prev->play_restart, 0);
    FUNC1(conf->idle_streams, prev->idle_streams, 1);

    conf->pool = FUNC2(4096, &cf->cycle->new_log);
    if (conf->pool == NULL) {
        return NGX_CONF_ERROR;
    }

    conf->streams = FUNC3(cf->pool,
            sizeof(ngx_rtmp_live_stream_t *) * conf->nbuckets);

    return NGX_CONF_OK;
}