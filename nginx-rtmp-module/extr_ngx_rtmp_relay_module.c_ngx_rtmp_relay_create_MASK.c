#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_14__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_relay_target_t ;
struct TYPE_13__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct TYPE_15__ {struct TYPE_15__* publish; struct TYPE_15__* play; int /*<<< orphan*/  session; struct TYPE_15__* next; TYPE_1__ name; } ;
typedef  TYPE_3__ ngx_rtmp_relay_ctx_t ;
typedef  TYPE_3__* (* ngx_rtmp_relay_create_ctx_pt ) (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ;
struct TYPE_16__ {size_t nbuckets; TYPE_3__** ctx; } ;
typedef  TYPE_6__ ngx_rtmp_relay_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_relay_module ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_rtmp_session_t *s, ngx_str_t *name,
        ngx_rtmp_relay_target_t *target,
        ngx_rtmp_relay_create_ctx_pt create_publish_ctx,
        ngx_rtmp_relay_create_ctx_pt create_play_ctx)
{
    ngx_rtmp_relay_app_conf_t      *racf;
    ngx_rtmp_relay_ctx_t           *publish_ctx, *play_ctx, **cctx;
    ngx_uint_t                      hash;


    racf = FUNC3(s, ngx_rtmp_relay_module);
    if (racf == NULL) {
        return NGX_ERROR;
    }

    play_ctx = create_play_ctx(s, name, target);
    if (play_ctx == NULL) {
        return NGX_ERROR;
    }

    hash = FUNC0(name->data, name->len);
    cctx = &racf->ctx[hash % racf->nbuckets];
    for (; *cctx; cctx = &(*cctx)->next) {
        if ((*cctx)->name.len == name->len
            && !FUNC1(name->data, (*cctx)->name.data,
                name->len))
        {
            break;
        }
    }

    if (*cctx) {
        play_ctx->publish = (*cctx)->publish;
        play_ctx->next = (*cctx)->play;
        (*cctx)->play = play_ctx;
        return NGX_OK;
    }

    publish_ctx = create_publish_ctx(s, name, target);
    if (publish_ctx == NULL) {
        FUNC2(play_ctx->session);
        return NGX_ERROR;
    }

    publish_ctx->publish = publish_ctx;
    publish_ctx->play = play_ctx;
    play_ctx->publish = publish_ctx;
    *cctx = publish_ctx;

    return NGX_OK;
}