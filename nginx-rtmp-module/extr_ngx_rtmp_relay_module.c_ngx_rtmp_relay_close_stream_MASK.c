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
struct TYPE_3__ {int /*<<< orphan*/  session_relay; } ;
typedef  TYPE_1__ ngx_rtmp_relay_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_close_stream_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_rtmp_relay_module ; 

__attribute__((used)) static ngx_int_t
FUNC3(ngx_rtmp_session_t *s, ngx_rtmp_close_stream_t *v)
{
    ngx_rtmp_relay_app_conf_t  *racf;

    racf = FUNC1(s, ngx_rtmp_relay_module);
    if (racf && !racf->session_relay) {
        FUNC2(s);
    }

    return FUNC0(s, v);
}