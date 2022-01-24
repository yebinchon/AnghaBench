#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_19__ {TYPE_1__* connection; scalar_t__ auto_pushed; } ;
typedef  TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_20__ {char* name; char* args; } ;
typedef  TYPE_4__ ngx_rtmp_record_ctx_t ;
struct TYPE_18__ {scalar_t__ nelts; } ;
struct TYPE_21__ {TYPE_2__ rec; } ;
typedef  TYPE_5__ ngx_rtmp_record_app_conf_t ;
struct TYPE_22__ {int /*<<< orphan*/  args; int /*<<< orphan*/  name; } ;
typedef  TYPE_6__ ngx_rtmp_publish_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_17__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char) ; 
 TYPE_5__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_rtmp_record_module ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_rtmp_session_t *s, ngx_rtmp_publish_t *v)
{
    ngx_rtmp_record_app_conf_t     *racf;
    ngx_rtmp_record_ctx_t          *ctx;
    u_char                         *p;

    if (s->auto_pushed) {
        goto next;
    }

    racf = FUNC4(s, ngx_rtmp_record_module);

    if (racf == NULL || racf->rec.nelts == 0) {
        goto next;
    }

    if (FUNC6(s) != NGX_OK) {
        return NGX_ERROR;
    }

    FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "record: publish %ui nodes",
                   racf->rec.nelts);

    ctx = FUNC5(s, ngx_rtmp_record_module);

    FUNC2(ctx->name, v->name, sizeof(ctx->name));
    FUNC2(ctx->args, v->args, sizeof(ctx->args));

    /* terminate name on /../ */
    for (p = ctx->name; *p; ++p) {
        if (FUNC3(p[0]) &&
            p[1] == '.' && p[2] == '.' &&
            FUNC3(p[3]))
        {
            *p = 0;
            break;
        }
    }

    FUNC7(s);

next:
    return FUNC0(s, v);
}