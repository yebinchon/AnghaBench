#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nn_ws_handshake {char const* opening_hs; char const* host; char const* origin; char const* key; char const* upgrade; char const* conn; char const* version; char const* protocol; char const* uri; size_t host_len; size_t origin_len; size_t key_len; size_t upgrade_len; size_t conn_len; size_t version_len; size_t protocol_len; size_t uri_len; char const* extensions; size_t extensions_len; void* response_code; TYPE_3__* pipebase; } ;
struct TYPE_8__ {char* ws_sp; scalar_t__ server; } ;
struct TYPE_7__ {TYPE_2__* sock; } ;
struct TYPE_6__ {TYPE_1__* socktype; } ;
struct TYPE_5__ {scalar_t__ protocol; } ;

/* Variables and functions */
 char* CRLF ; 
 int /*<<< orphan*/  NN_PAIR ; 
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
 int /*<<< orphan*/  NN_WS_HANDSHAKE_TERMSEQ ; 
 int NN_WS_HANDSHAKE_VALID ; 
 int FUNC0 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 char const* FUNC3 (char const*,char*) ; 
 int FUNC4 (char*,char const**,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char const**,int,int,char const**,size_t*) ; 
 int FUNC6 (char*,char const*,size_t,int) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9 (struct nn_ws_handshake *self)
{
    /*  As per RFC 6455 section 1.7, this parser is not intended to be a
        general-purpose parser for arbitrary HTTP headers. As with the design
        philosophy of nanomsg, application-specific exchanges are better
        reserved for accepted connections, not as fields within these
        headers. */

    int rc;
    const char *pos;
    unsigned i;

    /*  Guarantee that a NULL terminator exists to enable treating this
        recv buffer like a string. */
    FUNC1 (FUNC0 (self->opening_hs, '\0', sizeof (self->opening_hs)));

    /*  Having found the NULL terminator, from this point forward string
        functions may be used. */
    FUNC1 (FUNC7 (self->opening_hs) < sizeof (self->opening_hs));

    pos = self->opening_hs;

    /*  Is the opening handshake from the client fully received? */
    if (!FUNC8 (pos, NN_WS_HANDSHAKE_TERMSEQ))
        return NN_WS_HANDSHAKE_RECV_MORE;

    self->host = NULL;
    self->origin = NULL;
    self->key = NULL;
    self->upgrade = NULL;
    self->conn = NULL;
    self->version = NULL;
    self->protocol = NULL;
    self->uri = NULL;

    self->host_len = 0;
    self->origin_len = 0;
    self->key_len = 0;
    self->upgrade_len = 0;
    self->conn_len = 0;
    self->version_len = 0;
    self->protocol_len = 0;
    self->uri_len = 0;

    /*  NB: If we got here, we already have a fully received set of
        HTTP headers.  So there is no point in asking for more if the
        headers lack what we need. */

    /*  This function, if generating a return value that triggers
        a response to the client, should replace this sentinel value
        with a proper response code. */
    self->response_code = NN_WS_HANDSHAKE_RESPONSE_NULL;

    /*  RFC 7230 3.1.1 Request Line: HTTP Method
        Note requirement of one space and case sensitivity. */
    if (!FUNC4 ("GET\x20", &pos, 0, 0))
        return NN_WS_HANDSHAKE_INVALID;

    /*  RFC 7230 3.1.1 Request Line: Requested Resource. */
    if (!FUNC5 ("\x20", &pos, 0, 0, &self->uri, &self->uri_len))
        return NN_WS_HANDSHAKE_INVALID;

    /*  RFC 7230 3.1.1 Request Line: HTTP version. Note case sensitivity. */
    if (!FUNC4 ("HTTP/1.1", &pos, 0, 0))
        return NN_WS_HANDSHAKE_INVALID;

    if (!FUNC4 (CRLF, &pos, 0, 0))
        return NN_WS_HANDSHAKE_INVALID;

    /*  It's expected the current position is now at the first
        header field. Match them one by one. */
    while (FUNC7 (pos))
    {
        const char *conn = NULL;
        size_t conn_len = 0;
        if (FUNC4 ("Host:", &pos, 1, 0)) {
            rc = FUNC5 (CRLF, &pos, 1, 1,
                &self->host, &self->host_len);
        }
        else if (FUNC4 ("Origin:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = FUNC5 (CRLF, &pos, 1, 1,
                &self->origin, &self->origin_len);
        }
        else if (FUNC4 ("Sec-WebSocket-Key:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = FUNC5 (CRLF, &pos, 1, 1,
                &self->key, &self->key_len);
        }
        else if (FUNC4 ("Upgrade:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = FUNC5 (CRLF, &pos, 1, 1,
                &self->upgrade, &self->upgrade_len);
        }
        else if (FUNC4 ("Connection:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {

            rc = FUNC5 (CRLF, &pos, 1, 1, &conn, &conn_len);

            /*  The values here can be comma delimited, or they can be
                listed as separate Connection headers.  We only care about
                the presence of the Upgrade header, and we're willing to
                assume well-formedness.  This crummy parse may let clients
                send us a malformed header that we ought to reject, but
                we'll just cite Postel's law here if anyone asks. */
            self->conn = FUNC3 (conn, "upgrade");
            if (self->conn != NULL) {
                self->conn_len = FUNC7 ("upgrade");
            }
        }
        else if (FUNC4 ("Sec-WebSocket-Version:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = FUNC5 (CRLF, &pos, 1, 1,
                &self->version, &self->version_len);
        }
        else if (FUNC4 ("Sec-WebSocket-Protocol:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = FUNC5 (CRLF, &pos, 1, 1,
                &self->protocol, &self->protocol_len);
        }
        else if (FUNC4 ("Sec-WebSocket-Extensions:",
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            rc = FUNC5 (CRLF, &pos, 1, 1,
                &self->extensions, &self->extensions_len);
        }
        else if (FUNC4 (CRLF,
            &pos, 1, 0) == NN_WS_HANDSHAKE_MATCH) {
            /*  Exit loop since all headers are parsed. */
            break;
        }
        else {
            /*  Skip unknown headers. */
            rc = FUNC5 (CRLF, &pos, 1, 1,
                NULL, NULL);
        }

        if (rc != NN_WS_HANDSHAKE_MATCH)
            return NN_WS_HANDSHAKE_INVALID;
    }

    /*  Validate the opening handshake is now fully parsed. Additionally,
        as per RFC 6455 section 4.1, the client should not send additional data
        after the opening handshake, so this assertion validates upstream recv
        logic prevented this case. */
    FUNC1 (FUNC7 (pos) == 0);

    /*  TODO: protocol expectations below this point are hard-coded here as
        an initial design decision. Perhaps in the future these values should
        be settable via compile time (or run-time socket) options? */

    /*  These header fields are required as per RFC 6455 section 4.1. */
    if (!self->host || !self->upgrade || !self->conn ||
        !self->key || !self->version) {
        self->response_code = NN_WS_HANDSHAKE_RESPONSE_WSPROTO;
        return NN_WS_HANDSHAKE_INVALID;
    }

    /*  RFC 6455 section 4.2.1.6 (version December 2011). */
    if (FUNC6 ("13", self->version,
        self->version_len, 1) != NN_WS_HANDSHAKE_MATCH) {
        self->response_code = NN_WS_HANDSHAKE_RESPONSE_WSVERSION;
        return NN_WS_HANDSHAKE_INVALID;
    }

    /*  RFC 6455 section 4.2.1.3 (version December 2011). */
    if (FUNC6 ("websocket", self->upgrade,
        self->upgrade_len, 1) != NN_WS_HANDSHAKE_MATCH) {
        self->response_code = NN_WS_HANDSHAKE_RESPONSE_WSPROTO;
        return NN_WS_HANDSHAKE_INVALID;
    }

    /*  RFC 6455 section 4.2.1.4 (version December 2011). */
    if (FUNC6 ("Upgrade", self->conn,
        self->conn_len, 1) != NN_WS_HANDSHAKE_MATCH) {
        self->response_code = NN_WS_HANDSHAKE_RESPONSE_WSPROTO;
        return NN_WS_HANDSHAKE_INVALID;
    }

    /*  At this point, client meets RFC 6455 compliance for opening handshake.
        Now it's time to check nanomsg-imposed required handshake values. */
    if (self->protocol) {
        /*  Ensure the client SP is a compatible socket type. */
        for (i = 0; i < NN_WS_HANDSHAKE_SP_MAP_LEN; i++) {
            if (FUNC6 (NN_WS_HANDSHAKE_SP_MAP [i].ws_sp,
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
        /*  Be permissive and generous here, assuming that if a protocol is
            not explicitly declared, PAIR is presumed. This enables
            interoperability with non-nanomsg remote peers, nominally by
            making the local socket PAIR type. For any other local
            socket type, we expect connection to be rejected as
            incompatible if the header is not specified. */

        if (FUNC2 (self->pipebase, NN_PAIR)) {
            self->response_code = NN_WS_HANDSHAKE_RESPONSE_OK;
            return NN_WS_HANDSHAKE_VALID;
        }
        else {
            self->response_code = NN_WS_HANDSHAKE_RESPONSE_NOTPEER;
            return NN_WS_HANDSHAKE_INVALID;
        }
    }
}