#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_19__ {int len; char* data; } ;
struct TYPE_16__ {int playlen; TYPE_8__ path; } ;
typedef  TYPE_4__ ngx_rtmp_hls_cleanup_t ;
struct TYPE_17__ {int fraglen; int max_fraglen; int muxdelay; int sync; int playlen; scalar_t__ naming; scalar_t__ slicing; scalar_t__ type; int max_audio_delay; scalar_t__ frags_per_key; int winfrags; TYPE_8__ path; TYPE_8__ key_path; TYPE_11__* slot; scalar_t__ cleanup; scalar_t__ keys; scalar_t__ hls; TYPE_8__ key_url; scalar_t__ granularity; TYPE_8__ base_url; int /*<<< orphan*/  audio_buffer_size; scalar_t__ nested; scalar_t__ continuous; } ;
typedef  TYPE_5__ ngx_rtmp_hls_app_conf_t ;
struct TYPE_18__ {TYPE_2__* conf_file; int /*<<< orphan*/  pool; } ;
typedef  TYPE_6__ ngx_conf_t ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
struct TYPE_15__ {TYPE_1__ name; } ;
struct TYPE_14__ {int /*<<< orphan*/  line; TYPE_3__ file; } ;
struct TYPE_12__ {int /*<<< orphan*/  line; int /*<<< orphan*/  conf_file; TYPE_4__* data; TYPE_8__ name; void* manager; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_RTMP_HLS_BUFSIZE ; 
 int /*<<< orphan*/  NGX_RTMP_HLS_NAMING_SEQUENTIAL ; 
 int /*<<< orphan*/  NGX_RTMP_HLS_SLICING_PLAIN ; 
 scalar_t__ NGX_RTMP_HLS_TYPE_EVENT ; 
 int /*<<< orphan*/  NGX_RTMP_HLS_TYPE_LIVE ; 
 scalar_t__ FUNC0 (TYPE_6__*,TYPE_11__**) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__,TYPE_8__,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int) ; 
 void* ngx_rtmp_hls_cleanup ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static char *
FUNC8(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_hls_app_conf_t    *prev = parent;
    ngx_rtmp_hls_app_conf_t    *conf = child;
    ngx_rtmp_hls_cleanup_t     *cleanup;

    FUNC5(conf->hls, prev->hls, 0);
    FUNC1(conf->fraglen, prev->fraglen, 5000);
    FUNC1(conf->max_fraglen, prev->max_fraglen,
                              conf->fraglen * 10);
    FUNC1(conf->muxdelay, prev->muxdelay, 700);
    FUNC1(conf->sync, prev->sync, 2);
    FUNC1(conf->playlen, prev->playlen, 30000);
    FUNC5(conf->continuous, prev->continuous, 1);
    FUNC5(conf->nested, prev->nested, 0);
    FUNC4(conf->naming, prev->naming,
                              NGX_RTMP_HLS_NAMING_SEQUENTIAL);
    FUNC4(conf->slicing, prev->slicing,
                              NGX_RTMP_HLS_SLICING_PLAIN);
    FUNC4(conf->type, prev->type,
                              NGX_RTMP_HLS_TYPE_LIVE);
    FUNC1(conf->max_audio_delay, prev->max_audio_delay,
                              300);
    FUNC2(conf->audio_buffer_size, prev->audio_buffer_size,
                              NGX_RTMP_HLS_BUFSIZE);
    FUNC5(conf->cleanup, prev->cleanup, 1);
    FUNC3(conf->base_url, prev->base_url, "");
    FUNC5(conf->granularity, prev->granularity, 0);
    FUNC5(conf->keys, prev->keys, 0);
    FUNC3(conf->key_path, prev->key_path, "");
    FUNC3(conf->key_url, prev->key_url, "");
    FUNC4(conf->frags_per_key, prev->frags_per_key, 0);

    if (conf->fraglen) {
        conf->winfrags = conf->playlen / conf->fraglen;
    }

    /* schedule cleanup */

    if (conf->hls && conf->path.len && conf->cleanup &&
        conf->type != NGX_RTMP_HLS_TYPE_EVENT)
    {
        if (conf->path.data[conf->path.len - 1] == '/') {
            conf->path.len--;
        }

        cleanup = FUNC6(cf->pool, sizeof(*cleanup));
        if (cleanup == NULL) {
            return NGX_CONF_ERROR;
        }

        cleanup->path = conf->path;
        cleanup->playlen = conf->playlen;

        conf->slot = FUNC6(cf->pool, sizeof(*conf->slot));
        if (conf->slot == NULL) {
            return NGX_CONF_ERROR;
        }

        conf->slot->manager = ngx_rtmp_hls_cleanup;
        conf->slot->name = conf->path;
        conf->slot->data = cleanup;
        conf->slot->conf_file = cf->conf_file->file.name.data;
        conf->slot->line = cf->conf_file->line;

        if (FUNC0(cf, &conf->slot) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

    FUNC3(conf->path, prev->path, "");

    if (conf->keys && conf->cleanup && conf->key_path.len &&
        FUNC7(conf->key_path.data, conf->path.data) != 0 &&
        conf->type != NGX_RTMP_HLS_TYPE_EVENT)
    {
        if (conf->key_path.data[conf->key_path.len - 1] == '/') {
            conf->key_path.len--;
        }

        cleanup = FUNC6(cf->pool, sizeof(*cleanup));
        if (cleanup == NULL) {
            return NGX_CONF_ERROR;
        }

        cleanup->path = conf->key_path;
        cleanup->playlen = conf->playlen;

        conf->slot = FUNC6(cf->pool, sizeof(*conf->slot));
        if (conf->slot == NULL) {
            return NGX_CONF_ERROR;
        }

        conf->slot->manager = ngx_rtmp_hls_cleanup;
        conf->slot->name = conf->key_path;
        conf->slot->data = cleanup;
        conf->slot->conf_file = cf->conf_file->file.name.data;
        conf->slot->line = cf->conf_file->line;

        if (FUNC0(cf, &conf->slot) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

    FUNC3(conf->key_path, prev->key_path, "");

    if (conf->key_path.len == 0) {
        conf->key_path = conf->path;
    }

    return NGX_CONF_OK;
}