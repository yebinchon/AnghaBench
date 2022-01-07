
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ws_handshake {char* response; int response_code; int protocol_len; int version_len; int usock; int version; int protocol; int key_len; int key; } ;
struct nn_iovec {int iov_len; char** iov_base; } ;
typedef int accept_key ;


 int NN_WS_HANDSHAKE_ACCEPT_KEY_LEN ;


 int NN_WS_HANDSHAKE_RESPONSE_OK ;




 int alloc_assert (char*) ;
 int memset (char*,int ,int) ;
 char* nn_alloc (int,char*) ;
 int nn_assert (int) ;
 int nn_free (char*) ;
 int nn_usock_send (int ,struct nn_iovec*,int) ;
 int nn_ws_handshake_hash_key (int ,int ,char*,int) ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static void nn_ws_handshake_server_reply (struct nn_ws_handshake *self)
{
    struct nn_iovec response;
    char *code;
    char *version;
    char *protocol;
    int rc;


    char accept_key [NN_WS_HANDSHAKE_ACCEPT_KEY_LEN + 1];

    memset (self->response, 0, sizeof (self->response));

    if (self->response_code == NN_WS_HANDSHAKE_RESPONSE_OK) {


        rc = nn_ws_handshake_hash_key (self->key, self->key_len,
            accept_key, sizeof (accept_key));
        nn_assert (rc >= 0);

        nn_assert (strlen (accept_key) == NN_WS_HANDSHAKE_ACCEPT_KEY_LEN);

        protocol = nn_alloc (self->protocol_len + 1, "WebSocket protocol");
        alloc_assert (protocol);
        strncpy (protocol, self->protocol, self->protocol_len);
        protocol [self->protocol_len] = '\0';

        sprintf (self->response,
            "HTTP/1.1 101 Switching Protocols\r\n"
            "Upgrade: websocket\r\n"
            "Connection: Upgrade\r\n"
            "Sec-WebSocket-Accept: %s\r\n"
            "Sec-WebSocket-Protocol: %s\r\n\r\n",
            accept_key, protocol);

        nn_free (protocol);
    }
    else {

        switch (self->response_code) {
        case 131:
            code = "400 Opening Handshake Too Long";
            break;
        case 129:
            code = "400 Cannot Have Body";
            break;
        case 128:
            code = "400 Unsupported WebSocket Version";
            break;
        case 133:
            code = "400 Missing nanomsg Required Headers";
            break;
        case 132:
            code = "400 Incompatible Socket Type";
            break;
        case 130:
            code = "400 Unrecognized Socket Type";
            break;
        default:

            nn_assert (0);
            break;
        }

        version = nn_alloc (self->version_len + 1, "WebSocket version");
        alloc_assert (version);
        strncpy (version, self->version, self->version_len);
        version [self->version_len] = '\0';


        sprintf (self->response,
            "HTTP/1.1 %s\r\n"
            "Sec-WebSocket-Version: %s\r\n",
            code, version);

        nn_free (version);
    }

    response.iov_len = strlen (self->response);
    response.iov_base = &self->response;

    nn_usock_send (self->usock, &response, 1);

    return;
}
