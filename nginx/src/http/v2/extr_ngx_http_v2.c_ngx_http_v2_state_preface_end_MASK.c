#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  int /*<<< orphan*/  preface ;
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_v2_connection_t ;
struct TYPE_8__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_V2_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 char* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_2__*,char*,char*) ; 
 char* FUNC2 (TYPE_2__*,char*,char*,char* (*) (TYPE_2__*,char*,char*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*) ; 
 scalar_t__ FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static u_char *
FUNC6(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    static const u_char preface[] = "\r\nSM\r\n\r\n";

    if ((size_t) (end - pos) < sizeof(preface) - 1) {
        return FUNC2(h2c, pos, end,
                                      ngx_http_v2_state_preface_end);
    }

    if (FUNC5(pos, preface, sizeof(preface) - 1) != 0) {
        FUNC4(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                       "invalid http2 connection preface \"%*s\"",
                       sizeof(preface) - 1, pos);

        return FUNC0(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    FUNC3(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 preface verified");

    return FUNC1(h2c, pos + sizeof(preface) - 1, end);
}