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
typedef  char u_char ;
typedef  int /*<<< orphan*/  signature ;
struct TYPE_7__ {int /*<<< orphan*/  dst_port; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_port; int /*<<< orphan*/  src_addr; } ;
typedef  TYPE_1__ ngx_proxy_protocol_t ;
typedef  int /*<<< orphan*/  ngx_proxy_protocol_header_t ;
struct TYPE_8__ {int /*<<< orphan*/  log; TYPE_1__* proxy_protocol; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_connection_t ;

/* Variables and functions */
 char CR ; 
 char LF ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_CORE ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (TYPE_2__*,char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*,char*,int /*<<< orphan*/ *,char) ; 
 char* FUNC7 (TYPE_2__*,char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

u_char *
FUNC9(ngx_connection_t *c, u_char *buf, u_char *last)
{
    size_t                 len;
    u_char                *p;
    ngx_proxy_protocol_t  *pp;

    static const u_char signature[] = "\r\n\r\n\0\r\nQUIT\n";

    p = buf;
    len = last - buf;

    if (len >= sizeof(ngx_proxy_protocol_header_t)
        && FUNC0(p, signature, sizeof(signature) - 1) == 0)
    {
        return FUNC7(c, buf, last);
    }

    if (len < 8 || FUNC8(p, "PROXY ", 6) != 0) {
        goto invalid;
    }

    p += 6;
    len -= 6;

    if (len >= 7 && FUNC8(p, "UNKNOWN", 7) == 0) {
        FUNC1(NGX_LOG_DEBUG_CORE, c->log, 0,
                       "PROXY protocol unknown protocol");
        p += 7;
        goto skip;
    }

    if (len < 5 || FUNC8(p, "TCP", 3) != 0
        || (p[3] != '4' && p[3] != '6') || p[4] != ' ')
    {
        goto invalid;
    }

    p += 5;

    pp = FUNC4(c->pool, sizeof(ngx_proxy_protocol_t));
    if (pp == NULL) {
        return NULL;
    }

    p = FUNC5(c, p, last, &pp->src_addr);
    if (p == NULL) {
        goto invalid;
    }

    p = FUNC5(c, p, last, &pp->dst_addr);
    if (p == NULL) {
        goto invalid;
    }

    p = FUNC6(p, last, &pp->src_port, ' ');
    if (p == NULL) {
        goto invalid;
    }

    p = FUNC6(p, last, &pp->dst_port, CR);
    if (p == NULL) {
        goto invalid;
    }

    if (p == last) {
        goto invalid;
    }

    if (*p++ != LF) {
        goto invalid;
    }

    FUNC2(NGX_LOG_DEBUG_CORE, c->log, 0,
                   "PROXY protocol src: %V %d, dst: %V %d",
                   &pp->src_addr, pp->src_port, &pp->dst_addr, pp->dst_port);

    c->proxy_protocol = pp;

    return p;

skip:

    for ( /* void */ ; p < last - 1; p++) {
        if (p[0] == CR && p[1] == LF) {
            return p + 2;
        }
    }

invalid:

    FUNC3(NGX_LOG_ERR, c->log, 0,
                  "broken header: \"%*s\"", (size_t) (last - buf), buf);

    return NULL;
}