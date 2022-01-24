#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nn_ws_handshake {char* response; int response_code; int protocol_len; int version_len; int /*<<< orphan*/  usock; int /*<<< orphan*/  version; int /*<<< orphan*/  protocol; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;
struct nn_iovec {int iov_len; char** iov_base; } ;
typedef  int /*<<< orphan*/  accept_key ;

/* Variables and functions */
 int NN_WS_HANDSHAKE_ACCEPT_KEY_LEN ; 
#define  NN_WS_HANDSHAKE_RESPONSE_NNPROTO 133 
#define  NN_WS_HANDSHAKE_RESPONSE_NOTPEER 132 
 int NN_WS_HANDSHAKE_RESPONSE_OK ; 
#define  NN_WS_HANDSHAKE_RESPONSE_TOO_BIG 131 
#define  NN_WS_HANDSHAKE_RESPONSE_UNKNOWNTYPE 130 
#define  NN_WS_HANDSHAKE_RESPONSE_WSPROTO 129 
#define  NN_WS_HANDSHAKE_RESPONSE_WSVERSION 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nn_iovec*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10 (struct nn_ws_handshake *self)
{
    struct nn_iovec response;
    char *code;
    char *version;
    char *protocol;
    int rc;

    /*  Allow room for NULL terminator. */
    char accept_key [NN_WS_HANDSHAKE_ACCEPT_KEY_LEN + 1];

    FUNC1 (self->response, 0, sizeof (self->response));

    if (self->response_code == NN_WS_HANDSHAKE_RESPONSE_OK) {
        /*  Upgrade connection as per RFC 6455 section 4.2.2. */
        
        rc = FUNC6 (self->key, self->key_len,
            accept_key, sizeof (accept_key));
        FUNC3 (rc >= 0);

        FUNC3 (FUNC8 (accept_key) == NN_WS_HANDSHAKE_ACCEPT_KEY_LEN);

        protocol = FUNC2 (self->protocol_len + 1, "WebSocket protocol");
        FUNC0 (protocol);
        FUNC9 (protocol, self->protocol, self->protocol_len);
        protocol [self->protocol_len] = '\0';

        FUNC7 (self->response,
            "HTTP/1.1 101 Switching Protocols\r\n"
            "Upgrade: websocket\r\n"
            "Connection: Upgrade\r\n"
            "Sec-WebSocket-Accept: %s\r\n"
            "Sec-WebSocket-Protocol: %s\r\n\r\n",
            accept_key, protocol);

        FUNC4 (protocol);
    }
    else {
        /*  Fail the connection with a helpful hint. */
        switch (self->response_code) {
        case NN_WS_HANDSHAKE_RESPONSE_TOO_BIG:
            code = "400 Opening Handshake Too Long";
            break;
        case NN_WS_HANDSHAKE_RESPONSE_WSPROTO:
            code = "400 Cannot Have Body";
            break;
        case NN_WS_HANDSHAKE_RESPONSE_WSVERSION:
            code = "400 Unsupported WebSocket Version";
            break;
        case NN_WS_HANDSHAKE_RESPONSE_NNPROTO:
            code = "400 Missing nanomsg Required Headers";
            break;
        case NN_WS_HANDSHAKE_RESPONSE_NOTPEER:
            code = "400 Incompatible Socket Type";
            break;
        case NN_WS_HANDSHAKE_RESPONSE_UNKNOWNTYPE:
            code = "400 Unrecognized Socket Type";
            break;
        default:
            /*  Unexpected failure response. */
            FUNC3 (0);
            break;
        }

        version = FUNC2 (self->version_len + 1, "WebSocket version");
        FUNC0 (version);
        FUNC9 (version, self->version, self->version_len);
        version [self->version_len] = '\0';

        /*  Fail connection as per RFC 6455 4.4. */
        FUNC7 (self->response,
            "HTTP/1.1 %s\r\n"
            "Sec-WebSocket-Version: %s\r\n",
            code, version);

        FUNC4 (version);
    }

    response.iov_len = FUNC8 (self->response);
    response.iov_base = &self->response;

    FUNC5 (self->usock, &response, 1);

    return;
}