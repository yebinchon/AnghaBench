#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  char u_char ;
typedef  int /*<<< orphan*/  ngx_str_t ;
struct TYPE_8__ {int hs_old; TYPE_1__* connection; int /*<<< orphan*/  hs_digest; scalar_t__ peer_epoch; TYPE_3__* hs_buf; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_9__ {char* pos; char* last; } ;
typedef  TYPE_3__ ngx_buf_t ;
struct TYPE_7__ {int /*<<< orphan*/  log; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 int NGX_RTMP_HANDSHAKE_KEYLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,char*,int) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_rtmp_session_t *s,
        ngx_str_t *peer_key, ngx_str_t *key)
{
    ngx_buf_t              *b;
    u_char                 *p;
    ngx_int_t               offs;

    b = s->hs_buf;
    if (*b->pos != '\x03') {
        FUNC2(NGX_LOG_INFO, s->connection->log, 0,
                "handshake: unexpected RTMP version: %i",
                (ngx_int_t)*b->pos);
        return NGX_ERROR;
    }
    ++b->pos;
    s->peer_epoch = 0;
    FUNC6(&s->peer_epoch, b->pos, 4);

    p = b->pos + 4;
    FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "handshake: peer version=%i.%i.%i.%i epoch=%uD",
            (ngx_int_t)p[3], (ngx_int_t)p[2],
            (ngx_int_t)p[1], (ngx_int_t)p[0],
            (uint32_t)s->peer_epoch);
    if (*(uint32_t *)p == 0) {
        s->hs_old = 1;
        return NGX_OK;
    }

    offs = FUNC4(b, peer_key, 772, s->connection->log);
    if (offs == NGX_ERROR) {
        offs = FUNC4(b, peer_key, 8, s->connection->log);
    }
    if (offs == NGX_ERROR) {
        FUNC2(NGX_LOG_INFO, s->connection->log, 0,
                "handshake: digest not found");
        s->hs_old = 1;
        return NGX_OK;
    }
    FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "handshake: digest found at pos=%i", offs);
    b->pos += offs;
    b->last = b->pos + NGX_RTMP_HANDSHAKE_KEYLEN;
    s->hs_digest = FUNC3(s->connection->pool, NGX_RTMP_HANDSHAKE_KEYLEN);
    if (FUNC5(key, b, NULL, s->hs_digest, s->connection->log)
            != NGX_OK)
    {
        return NGX_ERROR;
    }
    return NGX_OK;
}