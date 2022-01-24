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
struct nn_ws_handshake {char const* response; char* expected_accept_key; int /*<<< orphan*/  accept_key_len; int /*<<< orphan*/ * accept_key; int /*<<< orphan*/  conn_len; int /*<<< orphan*/ * conn; int /*<<< orphan*/  upgrade_len; int /*<<< orphan*/ * upgrade; int /*<<< orphan*/  status_code_len; int /*<<< orphan*/ * status_code; int /*<<< orphan*/  extensions_len; int /*<<< orphan*/ * extensions; int /*<<< orphan*/  protocol_len; int /*<<< orphan*/ * protocol; int /*<<< orphan*/  version_len; int /*<<< orphan*/ * version; int /*<<< orphan*/  server_len; int /*<<< orphan*/ * server; int /*<<< orphan*/  reason_phrase_len; int /*<<< orphan*/ * reason_phrase; } ;

/* Variables and functions */
 char* CRLF ; 
 int NN_WS_HANDSHAKE_INVALID ; 
 int NN_WS_HANDSHAKE_MATCH ; 
 int NN_WS_HANDSHAKE_RECV_MORE ; 
 int /*<<< orphan*/  NN_WS_HANDSHAKE_TERMSEQ ; 
 int NN_WS_HANDSHAKE_VALID ; 
 int FUNC0 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,char const**,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char const**,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7 (struct nn_ws_handshake *self)
{
    /*  As per RFC 6455 section 1.7, this parser is not intended to be a
        general-purpose parser for arbitrary HTTP headers. As with the design
        philosophy of nanomsg, application-specific exchanges are better
        reserved for accepted connections, not as fields within these
        headers. */

    int rc;
    const char *pos;

    /*  Guarantee that a NULL terminator exists to enable treating this
        recv buffer like a string. The lack of such would indicate a failure
        upstream to catch a buffer overflow. */
    FUNC1 (FUNC0 (self->response, '\0', sizeof (self->response)));

    /*  Having found the NULL terminator, from this point forward string
        functions may be used. */
    FUNC1 (FUNC5 (self->response) < sizeof (self->response));

    pos = self->response;

    /*  Is the response from the server fully received? */
    if (!FUNC6 (pos, NN_WS_HANDSHAKE_TERMSEQ))
        return NN_WS_HANDSHAKE_RECV_MORE;

    self->status_code = NULL;
    self->reason_phrase = NULL;
    self->server = NULL;
    self->accept_key = NULL;
    self->upgrade = NULL;
    self->conn = NULL;
    self->version = NULL;
    self->protocol = NULL;

    self->status_code_len = 0;
    self->reason_phrase_len = 0;
    self->server_len = 0;
    self->accept_key_len = 0;
    self->upgrade_len = 0;
    self->conn_len = 0;
    self->version_len = 0;
    self->protocol_len = 0;

    /*  RFC 7230 3.1.2 Status Line: HTTP Version. */
    if (!FUNC2 ("HTTP/1.1\x20", &pos, 0, 0))
        return NN_WS_HANDSHAKE_RECV_MORE;

    /*  RFC 7230 3.1.2 Status Line: Status Code. */
    if (!FUNC3 ("\x20", &pos, 0, 0, &self->status_code,
        &self->status_code_len))
        return NN_WS_HANDSHAKE_RECV_MORE;

    /*  RFC 7230 3.1.2 Status Line: Reason Phrase. */
    if (!FUNC3 (CRLF, &pos, 0, 0,
        &self->reason_phrase, &self->reason_phrase_len))
        return NN_WS_HANDSHAKE_RECV_MORE;

    /*  It's expected the current position is now at the first
        header field. Match them one by one. */
    while (FUNC5 (pos))
    {
        if (FUNC2 ("Server:", &pos, 1, 0)) {
            rc = FUNC3 (CRLF, &pos, 1, 1,
                &self->server, &self->server_len);
        }
        else if (FUNC2 ("Sec-WebSocket-Accept:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = FUNC3 (CRLF, &pos, 1, 1,
                &self->accept_key, &self->accept_key_len);
        }
        else if (FUNC2 ("Upgrade:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = FUNC3 (CRLF, &pos, 1, 1,
                &self->upgrade, &self->upgrade_len);
        }
        else if (FUNC2 ("Connection:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = FUNC3 (CRLF, &pos, 1, 1,
                &self->conn, &self->conn_len);
        }
        else if (FUNC2 ("Sec-WebSocket-Version-Server:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = FUNC3 (CRLF, &pos, 1, 1,
                &self->version, &self->version_len);
        }
        else if (FUNC2 ("Sec-WebSocket-Protocol-Server:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = FUNC3 (CRLF, &pos, 1, 1,
                &self->protocol, &self->protocol_len);
        }
        else if (FUNC2 ("Sec-WebSocket-Extensions:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = FUNC3 (CRLF, &pos, 1, 1,
                &self->extensions, &self->extensions_len);
        }
        else if (FUNC2 (CRLF,
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            /*  Exit loop since all headers are parsed. */
            break;
        }
        else {
            /*  Skip unknown headers. */
            rc = FUNC3 (CRLF, &pos, 1, 1,
                NULL, NULL);
        }

        if (rc != NN_WS_HANDSHAKE_MATCH)
            return NN_WS_HANDSHAKE_RECV_MORE;
    }

    /*  Validate the opening handshake is now fully parsed. Additionally,
        as per RFC 6455 section 4.1, the client should not send additional data
        after the opening handshake, so this assertion validates upstream recv
        logic prevented this case. */
    FUNC1 (FUNC5 (pos) == 0);

    /*  TODO: protocol expectations below this point are hard-coded here as
        an initial design decision. Perhaps in the future these values should
        be settable via compile time (or run-time socket) options? */

    /*  These header fields are required as per RFC 6455 4.2.2. */
    if (!self->status_code || !self->upgrade || !self->conn ||
        !self->accept_key)
        return NN_WS_HANDSHAKE_INVALID;

    /*  TODO: Currently, we only handle a successful connection upgrade.
        Anything else is treated as a failed connection.
        Consider handling other scenarios like 3xx redirects. */
    if (FUNC4 ("101", self->status_code,
        self->status_code_len, 1) != NN_WS_HANDSHAKE_MATCH)
        return NN_WS_HANDSHAKE_INVALID;

    /*  RFC 6455 section 4.2.2.5.2 (version December 2011). */
    if (FUNC4 ("websocket", self->upgrade,
        self->upgrade_len, 1) != NN_WS_HANDSHAKE_MATCH)
        return NN_WS_HANDSHAKE_INVALID;

    /*  RFC 6455 section 4.2.2.5.3 (version December 2011). */
    if (FUNC4 ("Upgrade", self->conn,
        self->conn_len, 1) != NN_WS_HANDSHAKE_MATCH)
        return NN_WS_HANDSHAKE_INVALID;

    /*  RFC 6455 section 4.2.2.5.4 (version December 2011). */
    if (FUNC4 (self->expected_accept_key, self->accept_key,
        self->accept_key_len, 1) != NN_WS_HANDSHAKE_MATCH)
        return NN_WS_HANDSHAKE_INVALID;

    /*  Server response meets RFC 6455 compliance for opening handshake. */
    return NN_WS_HANDSHAKE_VALID;
}