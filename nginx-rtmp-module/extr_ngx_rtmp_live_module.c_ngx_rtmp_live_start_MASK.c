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
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
struct TYPE_3__ {scalar_t__ publish_notify; scalar_t__ play_restart; } ;
typedef  TYPE_1__ ngx_rtmp_live_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_core_srv_conf_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_RTMP_MSID ; 
 int /*<<< orphan*/  ngx_rtmp_core_module ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_live_module ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t,int) ; 

__attribute__((used)) static void
FUNC7(ngx_rtmp_session_t *s)
{
    ngx_rtmp_core_srv_conf_t   *cscf;
    ngx_rtmp_live_app_conf_t   *lacf;
    ngx_chain_t                *control;
    ngx_chain_t                *status[3];
    size_t                      n, nstatus;

    cscf = FUNC5(s, ngx_rtmp_core_module);

    lacf = FUNC4(s, ngx_rtmp_live_module);

    control = FUNC2(s, NGX_RTMP_MSID);

    nstatus = 0;

    if (lacf->play_restart) {
        status[nstatus++] = FUNC1(s, "NetStream.Play.Start",
                                                   "status", "Start live");
        status[nstatus++] = FUNC0(s);
    }

    if (lacf->publish_notify) {
        status[nstatus++] = FUNC1(s,
                                                 "NetStream.Play.PublishNotify",
                                                 "status", "Start publishing");
    }

    FUNC6(s, control, status, nstatus, 1);

    if (control) {
        FUNC3(cscf, control);
    }

    for (n = 0; n < nstatus; ++n) {
        FUNC3(cscf, status[n]);
    }
}