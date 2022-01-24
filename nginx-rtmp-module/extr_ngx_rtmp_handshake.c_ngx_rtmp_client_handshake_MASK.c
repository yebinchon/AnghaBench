#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  hs_stage; int /*<<< orphan*/  hs_buf; TYPE_3__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_13__ {TYPE_4__* write; int /*<<< orphan*/  log; TYPE_1__* read; } ;
typedef  TYPE_3__ ngx_connection_t ;
struct TYPE_14__ {int /*<<< orphan*/  (* handler ) (TYPE_4__*) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_RTMP_HANDSHAKE_CLIENT_SEND_CHALLENGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  ngx_rtmp_client_partial_key ; 
 int /*<<< orphan*/  ngx_rtmp_client_version ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_rtmp_handshake_recv ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 

void
FUNC7(ngx_rtmp_session_t *s, unsigned async)
{
    ngx_connection_t           *c;

    c = s->connection;
    c->read->handler =  ngx_rtmp_handshake_recv;
    c->write->handler = ngx_rtmp_handshake_send;

    FUNC2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "handshake: start client handshake");

    s->hs_buf = FUNC3(s);
    s->hs_stage = NGX_RTMP_HANDSHAKE_CLIENT_SEND_CHALLENGE;

    if (FUNC5(s,
                ngx_rtmp_client_version,
                &ngx_rtmp_client_partial_key) != NGX_OK)
    {
        FUNC4(s);
        return;
    }

    if (async) {
        FUNC0(c->write, s->timeout);
        if (FUNC1(c->write, 0) != NGX_OK) {
            FUNC4(s);
        }
        return;
    }

    FUNC6(c->write);
}