
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nn_ws_handshake {char const* opening_hs; char const* host; char const* origin; char const* key; char const* upgrade; char const* conn; char const* version; char const* protocol; char const* uri; size_t host_len; size_t origin_len; size_t key_len; size_t upgrade_len; size_t conn_len; size_t version_len; size_t protocol_len; size_t uri_len; char const* extensions; size_t extensions_len; void* response_code; TYPE_3__* pipebase; } ;
struct TYPE_8__ {char* ws_sp; scalar_t__ server; } ;
struct TYPE_7__ {TYPE_2__* sock; } ;
struct TYPE_6__ {TYPE_1__* socktype; } ;
struct TYPE_5__ {scalar_t__ protocol; } ;


 char* CRLF ;
 int NN_PAIR ;
 int NN_WS_HANDSHAKE_INVALID ;
 int NN_WS_HANDSHAKE_MATCH ;
 int NN_WS_HANDSHAKE_RECV_MORE ;
 void* NN_WS_HANDSHAKE_RESPONSE_NOTPEER ;
 void* NN_WS_HANDSHAKE_RESPONSE_NULL ;
 void* NN_WS_HANDSHAKE_RESPONSE_OK ;
 void* NN_WS_HANDSHAKE_RESPONSE_UNKNOWNTYPE ;
 void* NN_WS_HANDSHAKE_RESPONSE_WSPROTO ;
 void* NN_WS_HANDSHAKE_RESPONSE_WSVERSION ;
 TYPE_4__* NN_WS_HANDSHAKE_SP_MAP ;
 unsigned int NN_WS_HANDSHAKE_SP_MAP_LEN ;
 int NN_WS_HANDSHAKE_TERMSEQ ;
 int NN_WS_HANDSHAKE_VALID ;
 int memchr (char const*,char,int) ;
 int nn_assert (int) ;
 scalar_t__ nn_pipebase_ispeer (TYPE_3__*,int ) ;
 char const* nn_strcasestr (char const*,char*) ;
 int nn_ws_match_token (char*,char const**,int,int ) ;
 int nn_ws_match_value (char*,char const**,int,int,char const**,size_t*) ;
 int nn_ws_validate_value (char*,char const*,size_t,int) ;
 scalar_t__ strlen (char const*) ;
 int strstr (char const*,int ) ;

__attribute__((used)) static int nn_ws_handshake_parse_client_opening (struct nn_ws_handshake *self)
{






    int rc;
    const char *pos;
    unsigned i;



    nn_assert (memchr (self->opening_hs, '\0', sizeof (self->opening_hs)));



    nn_assert (strlen (self->opening_hs) < sizeof (self->opening_hs));

    pos = self->opening_hs;


    if (!strstr (pos, NN_WS_HANDSHAKE_TERMSEQ))
        return NN_WS_HANDSHAKE_RECV_MORE;

    self->host = ((void*)0);
    self->origin = ((void*)0);
    self->key = ((void*)0);
    self->upgrade = ((void*)0);
    self->conn = ((void*)0);
    self->version = ((void*)0);
    self->protocol = ((void*)0);
    self->uri = ((void*)0);

    self->host_len = 0;
    self->origin_len = 0;
    self->key_len = 0;
    self->upgrade_len = 0;
    self->conn_len = 0;
    self->version_len = 0;
    self->protocol_len = 0;
    self->uri_len = 0;
    self->response_code = NN_WS_HANDSHAKE_RESPONSE_NULL;



    if (!nn_ws_match_token ("GET\x20", &pos, 0, 0))
        return NN_WS_HANDSHAKE_INVALID;


    if (!nn_ws_match_value ("\x20", &pos, 0, 0, &self->uri, &self->uri_len))
        return NN_WS_HANDSHAKE_INVALID;


    if (!nn_ws_match_token ("HTTP/1.1", &pos, 0, 0))
        return NN_WS_HANDSHAKE_INVALID;

    if (!nn_ws_match_token (CRLF, &pos, 0, 0))
        return NN_WS_HANDSHAKE_INVALID;



    while (strlen (pos))
    {
        const char *conn = ((void*)0);
        size_t conn_len = 0;
        if (nn_ws_match_token ("Host:", &pos, 1, 0)) {
            rc = nn_ws_match_value (CRLF, &pos, 1, 1,
                &self->host, &self->host_len);
        }
        else if (nn_ws_match_token ("Origin:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = nn_ws_match_value (CRLF, &pos, 1, 1,
                &self->origin, &self->origin_len);
        }
        else if (nn_ws_match_token ("Sec-WebSocket-Key:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = nn_ws_match_value (CRLF, &pos, 1, 1,
                &self->key, &self->key_len);
        }
        else if (nn_ws_match_token ("Upgrade:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = nn_ws_match_value (CRLF, &pos, 1, 1,
                &self->upgrade, &self->upgrade_len);
        }
        else if (nn_ws_match_token ("Connection:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {

            rc = nn_ws_match_value (CRLF, &pos, 1, 1, &conn, &conn_len);







            self->conn = nn_strcasestr (conn, "upgrade");
            if (self->conn != ((void*)0)) {
                self->conn_len = strlen ("upgrade");
            }
        }
        else if (nn_ws_match_token ("Sec-WebSocket-Version:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = nn_ws_match_value (CRLF, &pos, 1, 1,
                &self->version, &self->version_len);
        }
        else if (nn_ws_match_token ("Sec-WebSocket-Protocol:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = nn_ws_match_value (CRLF, &pos, 1, 1,
                &self->protocol, &self->protocol_len);
        }
        else if (nn_ws_match_token ("Sec-WebSocket-Extensions:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = nn_ws_match_value (CRLF, &pos, 1, 1,
                &self->extensions, &self->extensions_len);
        }
        else if (nn_ws_match_token (CRLF,
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {

            break;
        }
        else {

            rc = nn_ws_match_value (CRLF, &pos, 1, 1,
                ((void*)0), ((void*)0));
        }

        if (rc != NN_WS_HANDSHAKE_MATCH)
            return NN_WS_HANDSHAKE_INVALID;
    }





    nn_assert (strlen (pos) == 0);






    if (!self->host || !self->upgrade || !self->conn ||
        !self->key || !self->version) {
        self->response_code = NN_WS_HANDSHAKE_RESPONSE_WSPROTO;
        return NN_WS_HANDSHAKE_INVALID;
    }


    if (nn_ws_validate_value ("13", self->version,
        self->version_len, 1) != NN_WS_HANDSHAKE_MATCH) {
        self->response_code = NN_WS_HANDSHAKE_RESPONSE_WSVERSION;
        return NN_WS_HANDSHAKE_INVALID;
    }


    if (nn_ws_validate_value ("websocket", self->upgrade,
        self->upgrade_len, 1) != NN_WS_HANDSHAKE_MATCH) {
        self->response_code = NN_WS_HANDSHAKE_RESPONSE_WSPROTO;
        return NN_WS_HANDSHAKE_INVALID;
    }


    if (nn_ws_validate_value ("Upgrade", self->conn,
        self->conn_len, 1) != NN_WS_HANDSHAKE_MATCH) {
        self->response_code = NN_WS_HANDSHAKE_RESPONSE_WSPROTO;
        return NN_WS_HANDSHAKE_INVALID;
    }



    if (self->protocol) {

        for (i = 0; i < NN_WS_HANDSHAKE_SP_MAP_LEN; i++) {
            if (nn_ws_validate_value (NN_WS_HANDSHAKE_SP_MAP [i].ws_sp,
                self->protocol, self->protocol_len, 1)) {

                if (self->pipebase->sock->socktype->protocol ==
                    NN_WS_HANDSHAKE_SP_MAP [i].server) {
                    self->response_code = NN_WS_HANDSHAKE_RESPONSE_OK;
                    return NN_WS_HANDSHAKE_VALID;
                }
                else {
                    self->response_code = NN_WS_HANDSHAKE_RESPONSE_NOTPEER;
                    return NN_WS_HANDSHAKE_INVALID;
                }
                break;
            }
        }

        self->response_code = NN_WS_HANDSHAKE_RESPONSE_UNKNOWNTYPE;
        return NN_WS_HANDSHAKE_INVALID;
    }
    else {







        if (nn_pipebase_ispeer (self->pipebase, NN_PAIR)) {
            self->response_code = NN_WS_HANDSHAKE_RESPONSE_OK;
            return NN_WS_HANDSHAKE_VALID;
        }
        else {
            self->response_code = NN_WS_HANDSHAKE_RESPONSE_NOTPEER;
            return NN_WS_HANDSHAKE_INVALID;
        }
    }
}
