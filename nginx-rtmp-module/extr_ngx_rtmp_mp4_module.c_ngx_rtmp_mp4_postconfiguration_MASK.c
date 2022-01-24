#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  fmts; } ;
typedef  TYPE_1__ ngx_rtmp_play_main_conf_t ;
struct TYPE_10__ {int /*<<< orphan*/  send; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; int /*<<< orphan*/  seek; int /*<<< orphan*/  done; int /*<<< orphan*/  init; int /*<<< orphan*/  sfx; int /*<<< orphan*/  pfx; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ ngx_rtmp_play_fmt_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_11__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_conf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 TYPE_2__** FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_mp4_done ; 
 int /*<<< orphan*/  ngx_rtmp_mp4_init ; 
 int /*<<< orphan*/  ngx_rtmp_mp4_seek ; 
 int /*<<< orphan*/  ngx_rtmp_mp4_send ; 
 int /*<<< orphan*/  ngx_rtmp_mp4_start ; 
 int /*<<< orphan*/  ngx_rtmp_mp4_stop ; 
 int /*<<< orphan*/  ngx_rtmp_play_module ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_conf_t *cf)
{
    ngx_rtmp_play_main_conf_t      *pmcf;
    ngx_rtmp_play_fmt_t           **pfmt, *fmt;

    pmcf = FUNC2(cf, ngx_rtmp_play_module);

    pfmt = FUNC0(&pmcf->fmts);

    if (pfmt == NULL) {
        return NGX_ERROR;
    }

    fmt = FUNC1(cf->pool, sizeof(ngx_rtmp_play_fmt_t));

    if (fmt == NULL) {
        return NGX_ERROR;
    }

    *pfmt = fmt;

    FUNC3(&fmt->name, "mp4-format");

    FUNC3(&fmt->pfx, "mp4:");
    FUNC3(&fmt->sfx, ".mp4");

    fmt->init  = ngx_rtmp_mp4_init;
    fmt->done  = ngx_rtmp_mp4_done;
    fmt->seek  = ngx_rtmp_mp4_seek;
    fmt->start = ngx_rtmp_mp4_start;
    fmt->stop  = ngx_rtmp_mp4_stop;
    fmt->send  = ngx_rtmp_mp4_send;

    return NGX_OK;
}