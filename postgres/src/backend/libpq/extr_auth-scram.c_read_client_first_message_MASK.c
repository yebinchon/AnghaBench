#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char cbind_flag; void* client_nonce; void* client_username; void* client_first_message_bare; int /*<<< orphan*/  channel_binding_in_use; TYPE_1__* port; } ;
typedef  TYPE_2__ scram_state ;
struct TYPE_4__ {int /*<<< orphan*/  ssl_in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char**,int /*<<< orphan*/ *) ; 
 void* FUNC7 (char**,char) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static void
FUNC11(scram_state *state, const char *input)
{
	char	   *p = FUNC5(input);
	char	   *channel_binding_type;


	/*------
	 * The syntax for the client-first-message is: (RFC 5802)
	 *
	 * saslname		   = 1*(value-safe-char / "=2C" / "=3D")
	 *					 ;; Conforms to <value>.
	 *
	 * authzid		   = "a=" saslname
	 *					 ;; Protocol specific.
	 *
	 * cb-name		   = 1*(ALPHA / DIGIT / "." / "-")
	 *					  ;; See RFC 5056, Section 7.
	 *					  ;; E.g., "tls-server-end-point" or
	 *					  ;; "tls-unique".
	 *
	 * gs2-cbind-flag  = ("p=" cb-name) / "n" / "y"
	 *					 ;; "n" -> client doesn't support channel binding.
	 *					 ;; "y" -> client does support channel binding
	 *					 ;;		   but thinks the server does not.
	 *					 ;; "p" -> client requires channel binding.
	 *					 ;; The selected channel binding follows "p=".
	 *
	 * gs2-header	   = gs2-cbind-flag "," [ authzid ] ","
	 *					 ;; GS2 header for SCRAM
	 *					 ;; (the actual GS2 header includes an optional
	 *					 ;; flag to indicate that the GSS mechanism is not
	 *					 ;; "standard", but since SCRAM is "standard", we
	 *					 ;; don't include that flag).
	 *
	 * username		   = "n=" saslname
	 *					 ;; Usernames are prepared using SASLprep.
	 *
	 * reserved-mext  = "m=" 1*(value-char)
	 *					 ;; Reserved for signaling mandatory extensions.
	 *					 ;; The exact syntax will be defined in
	 *					 ;; the future.
	 *
	 * nonce		   = "r=" c-nonce [s-nonce]
	 *					 ;; Second part provided by server.
	 *
	 * c-nonce		   = printable
	 *
	 * client-first-message-bare =
	 *					 [reserved-mext ","]
	 *					 username "," nonce ["," extensions]
	 *
	 * client-first-message =
	 *					 gs2-header client-first-message-bare
	 *
	 * For example:
	 * n,,n=user,r=fyko+d2lbbFgONRv9qkxdawL
	 *
	 * The "n,," in the beginning means that the client doesn't support
	 * channel binding, and no authzid is given.  "n=user" is the username.
	 * However, in PostgreSQL the username is sent in the startup packet, and
	 * the username in the SCRAM exchange is ignored.  libpq always sends it
	 * as an empty string.  The last part, "r=fyko+d2lbbFgONRv9qkxdawL" is
	 * the client nonce.
	 *------
	 */

	/*
	 * Read gs2-cbind-flag.  (For details see also RFC 5802 Section 6 "Channel
	 * Binding".)
	 */
	state->cbind_flag = *p;
	switch (*p)
	{
		case 'n':

			/*
			 * The client does not support channel binding or has simply
			 * decided to not use it.  In that case just let it go.
			 */
			if (state->channel_binding_in_use)
				FUNC0(ERROR,
						(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC3("malformed SCRAM message"),
						 FUNC2("The client selected SCRAM-SHA-256-PLUS, but the SCRAM message does not include channel binding data.")));

			p++;
			if (*p != ',')
				FUNC0(ERROR,
						(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC3("malformed SCRAM message"),
						 FUNC2("Comma expected, but found character \"%s\".",
								   FUNC8(*p))));
			p++;
			break;
		case 'y':

			/*
			 * The client supports channel binding and thinks that the server
			 * does not.  In this case, the server must fail authentication if
			 * it supports channel binding.
			 */
			if (state->channel_binding_in_use)
				FUNC0(ERROR,
						(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC3("malformed SCRAM message"),
						 FUNC2("The client selected SCRAM-SHA-256-PLUS, but the SCRAM message does not include channel binding data.")));

#ifdef HAVE_BE_TLS_GET_CERTIFICATE_HASH
			if (state->port->ssl_in_use)
				ereport(ERROR,
						(errcode(ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION),
						 errmsg("SCRAM channel binding negotiation error"),
						 errdetail("The client supports SCRAM channel binding but thinks the server does not.  "
								   "However, this server does support channel binding.")));
#endif
			p++;
			if (*p != ',')
				FUNC0(ERROR,
						(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC3("malformed SCRAM message"),
						 FUNC2("Comma expected, but found character \"%s\".",
								   FUNC8(*p))));
			p++;
			break;
		case 'p':

			/*
			 * The client requires channel binding.  Channel binding type
			 * follows, e.g., "p=tls-server-end-point".
			 */
			if (!state->channel_binding_in_use)
				FUNC0(ERROR,
						(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC3("malformed SCRAM message"),
						 FUNC2("The client selected SCRAM-SHA-256 without channel binding, but the SCRAM message includes channel binding data.")));

			channel_binding_type = FUNC7(&p, 'p');

			/*
			 * The only channel binding type we support is
			 * tls-server-end-point.
			 */
			if (FUNC10(channel_binding_type, "tls-server-end-point") != 0)
				FUNC0(ERROR,
						(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
						 (FUNC3("unsupported SCRAM channel-binding type \"%s\"",
								 FUNC9(channel_binding_type)))));
			break;
		default:
			FUNC0(ERROR,
					(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC3("malformed SCRAM message"),
					 FUNC2("Unexpected channel-binding flag \"%s\".",
							   FUNC8(*p))));
	}

	/*
	 * Forbid optional authzid (authorization identity).  We don't support it.
	 */
	if (*p == 'a')
		FUNC0(ERROR,
				(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC3("client uses authorization identity, but it is not supported")));
	if (*p != ',')
		FUNC0(ERROR,
				(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC3("malformed SCRAM message"),
				 FUNC2("Unexpected attribute \"%s\" in client-first-message.",
						   FUNC8(*p))));
	p++;

	state->client_first_message_bare = FUNC5(p);

	/*
	 * Any mandatory extensions would go here.  We don't support any.
	 *
	 * RFC 5802 specifies error code "e=extensions-not-supported" for this,
	 * but it can only be sent in the server-final message.  We prefer to fail
	 * immediately (which the RFC also allows).
	 */
	if (*p == 'm')
		FUNC0(ERROR,
				(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC3("client requires an unsupported SCRAM extension")));

	/*
	 * Read username.  Note: this is ignored.  We use the username from the
	 * startup message instead, still it is kept around if provided as it
	 * proves to be useful for debugging purposes.
	 */
	state->client_username = FUNC7(&p, 'n');

	/* read nonce and check that it is made of only printable characters */
	state->client_nonce = FUNC7(&p, 'r');
	if (!FUNC4(state->client_nonce))
		FUNC0(ERROR,
				(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC3("non-printable characters in SCRAM nonce")));

	/*
	 * There can be any number of optional extensions after this.  We don't
	 * support any extensions, so ignore them.
	 */
	while (*p != '\0')
		FUNC6(&p, NULL);

	/* success! */
}