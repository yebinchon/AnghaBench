#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;

/* Type definitions */
typedef  int u_char ;
struct TYPE_20__ {void** app_conf; TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_24__ {scalar_t__ fd; } ;
struct TYPE_21__ {TYPE_6__ file; scalar_t__ audio; scalar_t__ video; scalar_t__ initialized; TYPE_5__* conf; } ;
typedef  TYPE_3__ ngx_rtmp_record_rec_ctx_t ;
struct TYPE_18__ {scalar_t__ data; } ;
struct TYPE_22__ {int /*<<< orphan*/  path; TYPE_16__ recorder; } ;
typedef  TYPE_4__ ngx_rtmp_record_done_t ;
struct TYPE_23__ {void** rec_conf; TYPE_16__ id; scalar_t__ notify; } ;
typedef  TYPE_5__ ngx_rtmp_record_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_err_t ;
struct TYPE_19__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_FILE_ERROR ; 
 scalar_t__ NGX_INVALID_FILE ; 
 int /*<<< orphan*/  NGX_LOG_CRIT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,char*,char*) ; 
 scalar_t__ FUNC7 (TYPE_6__*,int*,int,int) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_rtmp_session_t *s,
                           ngx_rtmp_record_rec_ctx_t *rctx)
{
    ngx_rtmp_record_app_conf_t *rracf;
    ngx_err_t                   err;
    void                      **app_conf;
    ngx_int_t                   rc;
    ngx_rtmp_record_done_t      v;
    u_char                      av;

    rracf = rctx->conf;

    if (rctx->file.fd == NGX_INVALID_FILE) {
        return NGX_AGAIN;
    }

    if (rctx->initialized) {
        av = 0;

        if (rctx->video) {
            av |= 0x01;
        }

        if (rctx->audio) {
            av |= 0x04;
        }

        if (FUNC7(&rctx->file, &av, 1, 4) == NGX_ERROR) {
            FUNC2(NGX_LOG_CRIT, s->connection->log, ngx_errno,
                          "record: %V error writing av mask", &rracf->id);
        }
    }

    if (FUNC0(rctx->file.fd) == NGX_FILE_ERROR) {
        err = ngx_errno;
        FUNC2(NGX_LOG_CRIT, s->connection->log, err,
                      "record: %V error closing file", &rracf->id);

        FUNC5(s, rctx);
    }

    rctx->file.fd = NGX_INVALID_FILE;

    FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "record: %V closed", &rracf->id);

    if (rracf->notify) {
        FUNC6(s, "NetStream.Record.Stop", "status",
                             rracf->id.data ? (char *) rracf->id.data : "");
    }

    app_conf = s->app_conf;

    if (rracf->rec_conf) {
        s->app_conf = rracf->rec_conf;
    }

    v.recorder = rracf->id;
    FUNC4(s, rctx, &v.path);

    rc = FUNC3(s, &v);

    s->app_conf = app_conf;

    return rc;
}