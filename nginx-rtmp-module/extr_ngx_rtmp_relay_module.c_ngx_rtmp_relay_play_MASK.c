#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_5__ ngx_str_t ;
struct TYPE_26__ {TYPE_3__* connection; scalar_t__ relay; } ;
typedef  TYPE_6__ ngx_rtmp_session_t ;
struct TYPE_24__ {int /*<<< orphan*/  url; } ;
struct TYPE_22__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_27__ {TYPE_4__ url; int /*<<< orphan*/  play_path; int /*<<< orphan*/  app; TYPE_2__ name; } ;
typedef  TYPE_7__ ngx_rtmp_relay_target_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_relay_ctx_t ;
struct TYPE_21__ {size_t nelts; TYPE_7__** elts; } ;
struct TYPE_28__ {TYPE_1__ pulls; } ;
typedef  TYPE_8__ ngx_rtmp_relay_app_conf_t ;
struct TYPE_29__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_9__ ngx_rtmp_play_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_23__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_8__* FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_relay_module ; 
 scalar_t__ FUNC5 (TYPE_6__*,TYPE_5__*,TYPE_7__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_rtmp_session_t *s, ngx_rtmp_play_t *v)
{
    ngx_rtmp_relay_app_conf_t      *racf;
    ngx_rtmp_relay_target_t        *target, **t;
    ngx_str_t                       name;
    size_t                          n;
    ngx_rtmp_relay_ctx_t           *ctx;

    ctx = FUNC4(s, ngx_rtmp_relay_module);
    if (ctx && s->relay) {
        goto next;
    }

    racf = FUNC3(s, ngx_rtmp_relay_module);
    if (racf == NULL || racf->pulls.nelts == 0) {
        goto next;
    }

    name.len = FUNC6(v->name);
    name.data = v->name;

    t = racf->pulls.elts;
    for (n = 0; n < racf->pulls.nelts; ++n, ++t) {
        target = *t;

        if (target->name.len && (name.len != target->name.len ||
            FUNC2(name.data, target->name.data, name.len)))
        {
            continue;
        }

        if (FUNC5(s, &name, target) == NGX_OK) {
            continue;
        }

        FUNC1(NGX_LOG_ERR, s->connection->log, 0,
                "relay: pull failed name='%V' app='%V' "
                "playpath='%V' url='%V'",
                &name, &target->app, &target->play_path,
                &target->url.url);
    }

next:
    return FUNC0(s, v);
}