#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_14__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
struct TYPE_15__ {int /*<<< orphan*/  args; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ ngx_rtmp_publish_t ;
typedef  TYPE_2__ ngx_rtmp_play_t ;
struct TYPE_16__ {scalar_t__ publishing; } ;
typedef  TYPE_4__ ngx_rtmp_live_ctx_t ;
struct TYPE_17__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_5__ ngx_rtmp_control_ctx_t ;
typedef  TYPE_2__ ngx_rtmp_close_stream_t ;
typedef  int /*<<< orphan*/  ngx_http_request_t ;

/* Variables and functions */
 char const* NGX_CONF_OK ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ NGX_RTMP_MAX_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_control_module ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_live_module ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static const char *
FUNC9(ngx_http_request_t *r, ngx_rtmp_session_t *s)
{
    ngx_str_t                 name;
    ngx_rtmp_play_t           vplay;
    ngx_rtmp_publish_t        vpublish;
    ngx_rtmp_live_ctx_t      *lctx;
    ngx_rtmp_control_ctx_t   *ctx;
    ngx_rtmp_close_stream_t   vc;

    if (FUNC0(r, (u_char *) "newname", sizeof("newname") - 1, &name)
        != NGX_OK)
    {
        return "newname not specified";
    }

    if (name.len >= NGX_RTMP_MAX_NAME) {
        name.len = NGX_RTMP_MAX_NAME - 1;
    }

    ctx = FUNC1(r, ngx_rtmp_control_module);
    ctx->count++;

    FUNC3(&vc, sizeof(ngx_rtmp_close_stream_t));

    /* close_stream should be synchronous */
    FUNC4(s, &vc);

    lctx = FUNC6(s, ngx_rtmp_live_module);

    if (lctx && lctx->publishing) {
        /* publish */

        FUNC3(&vpublish, sizeof(ngx_rtmp_publish_t));

        FUNC2(vpublish.name, name.data, name.len);

        FUNC5(vpublish.name, vpublish.args);

        if (FUNC8(s, &vpublish) != NGX_OK) {
            return "publish failed";
        }

    } else {
        /* play */

        FUNC3(&vplay, sizeof(ngx_rtmp_play_t));

        FUNC2(vplay.name, name.data, name.len);

        FUNC5(vplay.name, vplay.args);

        if (FUNC7(s, &vplay) != NGX_OK) {
            return "play failed";
        }
    }

    return NGX_CONF_OK;
}