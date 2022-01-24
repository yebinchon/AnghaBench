#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_rtmp_handler_pt ;
struct TYPE_3__ {int /*<<< orphan*/ * events; } ;
typedef  TYPE_1__ ngx_rtmp_core_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_OK ; 
 size_t NGX_RTMP_MSG_AUDIO ; 
 size_t NGX_RTMP_MSG_VIDEO ; 
 int /*<<< orphan*/  next_close_stream ; 
 int /*<<< orphan*/  next_publish ; 
 int /*<<< orphan*/  next_stream_begin ; 
 int /*<<< orphan*/  next_stream_eof ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_rtmp_close_stream ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_core_module ; 
 int /*<<< orphan*/  ngx_rtmp_publish ; 
 int /*<<< orphan*/  ngx_rtmp_record_av ; 
 int /*<<< orphan*/  ngx_rtmp_record_close_stream ; 
 int /*<<< orphan*/  ngx_rtmp_record_done ; 
 int /*<<< orphan*/  ngx_rtmp_record_done_init ; 
 int /*<<< orphan*/  ngx_rtmp_record_publish ; 
 int /*<<< orphan*/  ngx_rtmp_record_stream_begin ; 
 int /*<<< orphan*/  ngx_rtmp_record_stream_eof ; 
 int /*<<< orphan*/  ngx_rtmp_stream_begin ; 
 int /*<<< orphan*/  ngx_rtmp_stream_eof ; 

__attribute__((used)) static ngx_int_t
FUNC2(ngx_conf_t *cf)
{
    ngx_rtmp_core_main_conf_t          *cmcf;
    ngx_rtmp_handler_pt                *h;

    ngx_rtmp_record_done = ngx_rtmp_record_done_init;

    cmcf = FUNC1(cf, ngx_rtmp_core_module);

    h = FUNC0(&cmcf->events[NGX_RTMP_MSG_AUDIO]);
    *h = ngx_rtmp_record_av;

    h = FUNC0(&cmcf->events[NGX_RTMP_MSG_VIDEO]);
    *h = ngx_rtmp_record_av;

    next_publish = ngx_rtmp_publish;
    ngx_rtmp_publish = ngx_rtmp_record_publish;

    next_close_stream = ngx_rtmp_close_stream;
    ngx_rtmp_close_stream = ngx_rtmp_record_close_stream;

    next_stream_begin = ngx_rtmp_stream_begin;
    ngx_rtmp_stream_begin = ngx_rtmp_record_stream_begin;

    next_stream_eof = ngx_rtmp_stream_eof;
    ngx_rtmp_stream_eof = ngx_rtmp_record_stream_eof;

    return NGX_OK;
}