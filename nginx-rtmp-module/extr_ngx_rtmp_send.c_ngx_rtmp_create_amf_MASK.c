#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_header_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_core_srv_conf_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_amf_elt_t ;
typedef  scalar_t__ ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;
struct TYPE_7__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  ngx_rtmp_core_module ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ngx_chain_t *
FUNC5(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
                    ngx_rtmp_amf_elt_t *elts, size_t nelts)
{
    ngx_chain_t                *first;
    ngx_int_t                   rc;
    ngx_rtmp_core_srv_conf_t   *cscf;

    FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "create: amf nelts=%ui", nelts);

    cscf = FUNC3(s, ngx_rtmp_core_module);

    first = NULL;

    rc = FUNC1(s, &first, NULL, elts, nelts);

    if (rc != NGX_OK && first) {
        FUNC2(cscf, first);
        first = NULL;
    }

    if (first) {
        FUNC4(s, h, NULL, first);
    }

    return first;
}