#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  websocket_uuid ;
struct lwan_request {int flags; TYPE_1__* conn; } ;
typedef  int /*<<< orphan*/  sha1_context ;
typedef  enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;
typedef  int /*<<< orphan*/  digest ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  coro; } ;

/* Variables and functions */
 int CONN_IS_UPGRADE ; 
 int HTTP_BAD_REQUEST ; 
 int HTTP_INTERNAL_ERROR ; 
 int HTTP_SWITCHING_PROTOCOLS ; 
 int RESPONSE_SENT_HEADERS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  free ; 
 char* FUNC4 (struct lwan_request*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char const*,size_t const) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 size_t FUNC9 (char const*) ; 

__attribute__((used)) static enum lwan_http_status
FUNC10(struct lwan_request *request, char **encoded)
{
    static const unsigned char websocket_uuid[] =
        "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    unsigned char digest[20];
    sha1_context ctx;

    if (FUNC0(request->flags & RESPONSE_SENT_HEADERS))
        return HTTP_INTERNAL_ERROR;

    if (FUNC0(!(request->conn->flags & CONN_IS_UPGRADE)))
        return HTTP_BAD_REQUEST;

    const char *upgrade = FUNC4(request, "Upgrade");
    if (FUNC0(!upgrade || !FUNC8(upgrade, "websocket")))
        return HTTP_BAD_REQUEST;

    const char *sec_websocket_key =
        FUNC4(request, "Sec-WebSocket-Key");
    if (FUNC0(!sec_websocket_key))
        return HTTP_BAD_REQUEST;
    const size_t sec_websocket_key_len = FUNC9(sec_websocket_key);
    if (FUNC0(!FUNC2((void *)sec_websocket_key, sec_websocket_key_len)))
        return HTTP_BAD_REQUEST;

    FUNC6(&ctx);
    FUNC7(&ctx, (void *)sec_websocket_key, sec_websocket_key_len);
    FUNC7(&ctx, websocket_uuid, sizeof(websocket_uuid) - 1);
    FUNC5(&ctx, digest);

    *encoded = (char *)FUNC1(digest, sizeof(digest), NULL);
    if (FUNC0(!*encoded))
        return HTTP_INTERNAL_ERROR;
    FUNC3(request->conn->coro, free, *encoded);

    return HTTP_SWITCHING_PROTOCOLS;
}