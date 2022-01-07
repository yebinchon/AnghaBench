
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ws_handshake {char const* response; char* expected_accept_key; int accept_key_len; int * accept_key; int conn_len; int * conn; int upgrade_len; int * upgrade; int status_code_len; int * status_code; int extensions_len; int * extensions; int protocol_len; int * protocol; int version_len; int * version; int server_len; int * server; int reason_phrase_len; int * reason_phrase; } ;


 char* CRLF ;
 int NN_WS_HANDSHAKE_INVALID ;
 int NN_WS_HANDSHAKE_MATCH ;
 int NN_WS_HANDSHAKE_RECV_MORE ;
 int NN_WS_HANDSHAKE_TERMSEQ ;
 int NN_WS_HANDSHAKE_VALID ;
 int memchr (char const*,char,int) ;
 int nn_assert (int) ;
 int nn_ws_match_token (char*,char const**,int,int ) ;
 int nn_ws_match_value (char*,char const**,int,int,int **,int *) ;
 int nn_ws_validate_value (char*,int *,int ,int) ;
 scalar_t__ strlen (char const*) ;
 int strstr (char const*,int ) ;

__attribute__((used)) static int nn_ws_handshake_parse_server_response (struct nn_ws_handshake *self)
{






    int rc;
    const char *pos;




    nn_assert (memchr (self->response, '\0', sizeof (self->response)));



    nn_assert (strlen (self->response) < sizeof (self->response));

    pos = self->response;


    if (!strstr (pos, NN_WS_HANDSHAKE_TERMSEQ))
        return NN_WS_HANDSHAKE_RECV_MORE;

    self->status_code = ((void*)0);
    self->reason_phrase = ((void*)0);
    self->server = ((void*)0);
    self->accept_key = ((void*)0);
    self->upgrade = ((void*)0);
    self->conn = ((void*)0);
    self->version = ((void*)0);
    self->protocol = ((void*)0);

    self->status_code_len = 0;
    self->reason_phrase_len = 0;
    self->server_len = 0;
    self->accept_key_len = 0;
    self->upgrade_len = 0;
    self->conn_len = 0;
    self->version_len = 0;
    self->protocol_len = 0;


    if (!nn_ws_match_token ("HTTP/1.1\x20", &pos, 0, 0))
        return NN_WS_HANDSHAKE_RECV_MORE;


    if (!nn_ws_match_value ("\x20", &pos, 0, 0, &self->status_code,
        &self->status_code_len))
        return NN_WS_HANDSHAKE_RECV_MORE;


    if (!nn_ws_match_value (CRLF, &pos, 0, 0,
        &self->reason_phrase, &self->reason_phrase_len))
        return NN_WS_HANDSHAKE_RECV_MORE;



    while (strlen (pos))
    {
        if (nn_ws_match_token ("Server:", &pos, 1, 0)) {
            rc = nn_ws_match_value (CRLF, &pos, 1, 1,
                &self->server, &self->server_len);
        }
        else if (nn_ws_match_token ("Sec-WebSocket-Accept:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = nn_ws_match_value (CRLF, &pos, 1, 1,
                &self->accept_key, &self->accept_key_len);
        }
        else if (nn_ws_match_token ("Upgrade:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = nn_ws_match_value (CRLF, &pos, 1, 1,
                &self->upgrade, &self->upgrade_len);
        }
        else if (nn_ws_match_token ("Connection:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = nn_ws_match_value (CRLF, &pos, 1, 1,
                &self->conn, &self->conn_len);
        }
        else if (nn_ws_match_token ("Sec-WebSocket-Version-Server:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = nn_ws_match_value (CRLF, &pos, 1, 1,
                &self->version, &self->version_len);
        }
        else if (nn_ws_match_token ("Sec-WebSocket-Protocol-Server:",
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
            return NN_WS_HANDSHAKE_RECV_MORE;
    }





    nn_assert (strlen (pos) == 0);






    if (!self->status_code || !self->upgrade || !self->conn ||
        !self->accept_key)
        return NN_WS_HANDSHAKE_INVALID;




    if (nn_ws_validate_value ("101", self->status_code,
        self->status_code_len, 1) != NN_WS_HANDSHAKE_MATCH)
        return NN_WS_HANDSHAKE_INVALID;


    if (nn_ws_validate_value ("websocket", self->upgrade,
        self->upgrade_len, 1) != NN_WS_HANDSHAKE_MATCH)
        return NN_WS_HANDSHAKE_INVALID;


    if (nn_ws_validate_value ("Upgrade", self->conn,
        self->conn_len, 1) != NN_WS_HANDSHAKE_MATCH)
        return NN_WS_HANDSHAKE_INVALID;


    if (nn_ws_validate_value (self->expected_accept_key, self->accept_key,
        self->accept_key_len, 1) != NN_WS_HANDSHAKE_MATCH)
        return NN_WS_HANDSHAKE_INVALID;


    return NN_WS_HANDSHAKE_VALID;
}
