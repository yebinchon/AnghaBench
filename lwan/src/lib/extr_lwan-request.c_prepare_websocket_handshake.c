
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int websocket_uuid ;
struct lwan_request {int flags; TYPE_1__* conn; } ;
typedef int sha1_context ;
typedef enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;
typedef int digest ;
struct TYPE_2__ {int flags; int coro; } ;


 int CONN_IS_UPGRADE ;
 int HTTP_BAD_REQUEST ;
 int HTTP_INTERNAL_ERROR ;
 int HTTP_SWITCHING_PROTOCOLS ;
 int RESPONSE_SENT_HEADERS ;
 scalar_t__ UNLIKELY (int) ;
 scalar_t__ base64_encode (unsigned char*,int,int *) ;
 int base64_validate (void*,size_t const) ;
 int coro_defer (int ,int ,char*) ;
 int free ;
 char* lwan_request_get_header (struct lwan_request*,char*) ;
 int sha1_finalize (int *,unsigned char*) ;
 int sha1_init (int *) ;
 int sha1_update (int *,unsigned char const*,size_t const) ;
 int streq (char const*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static enum lwan_http_status
prepare_websocket_handshake(struct lwan_request *request, char **encoded)
{
    static const unsigned char websocket_uuid[] =
        "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    unsigned char digest[20];
    sha1_context ctx;

    if (UNLIKELY(request->flags & RESPONSE_SENT_HEADERS))
        return HTTP_INTERNAL_ERROR;

    if (UNLIKELY(!(request->conn->flags & CONN_IS_UPGRADE)))
        return HTTP_BAD_REQUEST;

    const char *upgrade = lwan_request_get_header(request, "Upgrade");
    if (UNLIKELY(!upgrade || !streq(upgrade, "websocket")))
        return HTTP_BAD_REQUEST;

    const char *sec_websocket_key =
        lwan_request_get_header(request, "Sec-WebSocket-Key");
    if (UNLIKELY(!sec_websocket_key))
        return HTTP_BAD_REQUEST;
    const size_t sec_websocket_key_len = strlen(sec_websocket_key);
    if (UNLIKELY(!base64_validate((void *)sec_websocket_key, sec_websocket_key_len)))
        return HTTP_BAD_REQUEST;

    sha1_init(&ctx);
    sha1_update(&ctx, (void *)sec_websocket_key, sec_websocket_key_len);
    sha1_update(&ctx, websocket_uuid, sizeof(websocket_uuid) - 1);
    sha1_finalize(&ctx, digest);

    *encoded = (char *)base64_encode(digest, sizeof(digest), ((void*)0));
    if (UNLIKELY(!*encoded))
        return HTTP_INTERNAL_ERROR;
    coro_defer(request->conn->coro, free, *encoded);

    return HTTP_SWITCHING_PROTOCOLS;
}
