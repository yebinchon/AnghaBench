#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_http_v2_handler_pt ;
struct TYPE_12__ {size_t length; scalar_t__ sid; int /*<<< orphan*/  handler; TYPE_3__* stream; int /*<<< orphan*/  flags; scalar_t__ padding; } ;
struct TYPE_13__ {TYPE_4__ state; TYPE_1__* connection; } ;
typedef  TYPE_5__ ngx_http_v2_connection_t ;
struct TYPE_11__ {TYPE_2__* request; } ;
struct TYPE_10__ {size_t request_length; } ;
struct TYPE_9__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_HTTP_V2_CONTINUATION_FRAME ; 
 size_t NGX_HTTP_V2_FRAME_HEADER_SIZE ; 
 int /*<<< orphan*/  NGX_HTTP_V2_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC9 (scalar_t__,int) ; 

__attribute__((used)) static u_char *
FUNC10(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end, ngx_http_v2_handler_pt handler)
{
    u_char    *p;
    size_t     len, skip;
    uint32_t   head;

    len = h2c->state.length;

    if (h2c->state.padding && (size_t) (end - pos) > len) {
        skip = FUNC9(h2c->state.padding, (end - pos) - len);

        h2c->state.padding -= skip;

        p = pos;
        pos += skip;
        FUNC8(pos, p, len);
    }

    if ((size_t) (end - pos) < len + NGX_HTTP_V2_FRAME_HEADER_SIZE) {
        return FUNC5(h2c, pos, end, handler);
    }

    p = pos + len;

    head = FUNC4(p);

    if (FUNC3(head) != NGX_HTTP_V2_CONTINUATION_FRAME) {
        FUNC6(NGX_LOG_INFO, h2c->connection->log, 0,
             "client sent inappropriate frame while CONTINUATION was expected");

        return FUNC0(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    h2c->state.flags |= p[4];

    if (h2c->state.sid != FUNC2(&p[5])) {
        FUNC6(NGX_LOG_INFO, h2c->connection->log, 0,
                    "client sent CONTINUATION frame with incorrect identifier");

        return FUNC0(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    p = pos;
    pos += NGX_HTTP_V2_FRAME_HEADER_SIZE;

    FUNC7(pos, p, len);

    len = FUNC1(head);

    h2c->state.length += len;

    if (h2c->state.stream) {
        h2c->state.stream->request->request_length += len;
    }

    h2c->state.handler = handler;
    return pos;
}