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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_live_module ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(ngx_rtmp_session_t *s)
{
    ngx_rtmp_core_srv_conf_t   *cscf;
    ngx_rtmp_live_app_conf_t   *lacf;
    ngx_chain_t                *control;
    ngx_chain_t                *status[3];
    size_t                      n, nstatus;

    cscf = FUNC4(s, ngx_rtmp_core_module);

    lacf = FUNC3(s, ngx_rtmp_live_module);

    control = FUNC1(s, NGX_RTMP_MSID);

    nstatus = 0;

    if (lacf->play_restart) {
        status[nstatus++] = FUNC0(s, "NetStream.Play.Stop",
                                                   "status", "Stop live");
    }

    if (lacf->publish_notify) {
        status[nstatus++] = FUNC0(s,
                                               "NetStream.Play.UnpublishNotify",
                                               "status", "Stop publishing");
    }

    FUNC5(s, control, status, nstatus, 0);

    if (control) {
        FUNC2(cscf, control);
    }

    for (n = 0; n < nstatus; ++n) {
        FUNC2(cscf, status[n]);
    }
}