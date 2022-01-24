#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_21__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
struct TYPE_30__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_5__ ngx_str_t ;
struct TYPE_31__ {TYPE_3__* connection; scalar_t__ relay; scalar_t__ auto_pushed; } ;
typedef  TYPE_6__ ngx_rtmp_session_t ;
struct TYPE_29__ {int /*<<< orphan*/  url; } ;
struct TYPE_27__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_32__ {TYPE_4__ url; int /*<<< orphan*/  play_path; int /*<<< orphan*/  app; TYPE_2__ name; } ;
typedef  TYPE_7__ ngx_rtmp_relay_target_t ;
struct TYPE_26__ {int /*<<< orphan*/  timer_set; } ;
struct TYPE_33__ {TYPE_21__ push_evt; } ;
typedef  TYPE_8__ ngx_rtmp_relay_ctx_t ;
struct TYPE_25__ {size_t nelts; TYPE_7__** elts; } ;
struct TYPE_34__ {int /*<<< orphan*/  push_reconnect; TYPE_1__ pushes; } ;
typedef  TYPE_9__ ngx_rtmp_relay_app_conf_t ;
struct TYPE_24__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_10__ ngx_rtmp_publish_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_28__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_21__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_9__* FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_relay_module ; 
 scalar_t__ FUNC6 (TYPE_6__*,TYPE_5__*,TYPE_7__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_rtmp_session_t *s, ngx_rtmp_publish_t *v)
{
    ngx_rtmp_relay_app_conf_t      *racf;
    ngx_rtmp_relay_target_t        *target, **t;
    ngx_str_t                       name;
    size_t                          n;
    ngx_rtmp_relay_ctx_t           *ctx;

    if (s->auto_pushed) {
        goto next;
    }

    ctx = FUNC5(s, ngx_rtmp_relay_module);
    if (ctx && s->relay) {
        goto next;
    }

    racf = FUNC4(s, ngx_rtmp_relay_module);
    if (racf == NULL || racf->pushes.nelts == 0) {
        goto next;
    }

    name.len = FUNC7(v->name);
    name.data = v->name;

    t = racf->pushes.elts;
    for (n = 0; n < racf->pushes.nelts; ++n, ++t) {
        target = *t;

        if (target->name.len && (name.len != target->name.len ||
            FUNC3(name.data, target->name.data, name.len)))
        {
            continue;
        }

        if (FUNC6(s, &name, target) == NGX_OK) {
            continue;
        }

        FUNC2(NGX_LOG_ERR, s->connection->log, 0,
                "relay: push failed name='%V' app='%V' "
                "playpath='%V' url='%V'",
                &name, &target->app, &target->play_path,
                &target->url.url);

        if (!ctx->push_evt.timer_set) {
            FUNC1(&ctx->push_evt, racf->push_reconnect);
        }
    }

next:
    return FUNC0(s, v);
}