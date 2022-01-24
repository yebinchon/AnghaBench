#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char cbind_flag; char* ClientProof; char* client_final_message_without_proof; void* client_final_nonce; int /*<<< orphan*/  port; scalar_t__ channel_binding_in_use; } ;
typedef  TYPE_1__ scram_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int SCRAM_KEY_LEN ; 
 char* FUNC1 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (size_t) ; 
 int FUNC11 (char*,size_t,char*,int) ; 
 int FUNC12 (size_t) ; 
 int FUNC13 (char*,size_t,char*,int) ; 
 char* FUNC14 (char const*) ; 
 char* FUNC15 (char**,char*) ; 
 void* FUNC16 (char**,char) ; 
 int /*<<< orphan*/  FUNC17 (char*,size_t,char*) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 size_t FUNC19 (char*) ; 

__attribute__((used)) static void
FUNC20(scram_state *state, const char *input)
{
	char		attr;
	char	   *channel_binding;
	char	   *value;
	char	   *begin,
			   *proof;
	char	   *p;
	char	   *client_proof;
	int			client_proof_len;

	begin = p = FUNC14(input);

	/*------
	 * The syntax for the server-first-message is: (RFC 5802)
	 *
	 * gs2-header	   = gs2-cbind-flag "," [ authzid ] ","
	 *					 ;; GS2 header for SCRAM
	 *					 ;; (the actual GS2 header includes an optional
	 *					 ;; flag to indicate that the GSS mechanism is not
	 *					 ;; "standard", but since SCRAM is "standard", we
	 *					 ;; don't include that flag).
	 *
	 * cbind-input	 = gs2-header [ cbind-data ]
	 *					 ;; cbind-data MUST be present for
	 *					 ;; gs2-cbind-flag of "p" and MUST be absent
	 *					 ;; for "y" or "n".
	 *
	 * channel-binding = "c=" base64
	 *					 ;; base64 encoding of cbind-input.
	 *
	 * proof		   = "p=" base64
	 *
	 * client-final-message-without-proof =
	 *					 channel-binding "," nonce [","
	 *					 extensions]
	 *
	 * client-final-message =
	 *					 client-final-message-without-proof "," proof
	 *------
	 */

	/*
	 * Read channel binding.  This repeats the channel-binding flags and is
	 * then followed by the actual binding data depending on the type.
	 */
	channel_binding = FUNC16(&p, 'c');
	if (state->channel_binding_in_use)
	{
#ifdef HAVE_BE_TLS_GET_CERTIFICATE_HASH
		const char *cbind_data = NULL;
		size_t		cbind_data_len = 0;
		size_t		cbind_header_len;
		char	   *cbind_input;
		size_t		cbind_input_len;
		char	   *b64_message;
		int			b64_message_len;

		Assert(state->cbind_flag == 'p');

		/* Fetch hash data of server's SSL certificate */
		cbind_data = be_tls_get_certificate_hash(state->port,
												 &cbind_data_len);

		/* should not happen */
		if (cbind_data == NULL || cbind_data_len == 0)
			elog(ERROR, "could not get server certificate hash");

		cbind_header_len = strlen("p=tls-server-end-point,,");	/* p=type,, */
		cbind_input_len = cbind_header_len + cbind_data_len;
		cbind_input = palloc(cbind_input_len);
		snprintf(cbind_input, cbind_input_len, "p=tls-server-end-point,,");
		memcpy(cbind_input + cbind_header_len, cbind_data, cbind_data_len);

		b64_message_len = pg_b64_enc_len(cbind_input_len);
		/* don't forget the zero-terminator */
		b64_message = palloc(b64_message_len + 1);
		b64_message_len = pg_b64_encode(cbind_input, cbind_input_len,
										b64_message, b64_message_len);
		if (b64_message_len < 0)
			elog(ERROR, "could not encode channel binding data");
		b64_message[b64_message_len] = '\0';

		/*
		 * Compare the value sent by the client with the value expected by the
		 * server.
		 */
		if (strcmp(channel_binding, b64_message) != 0)
			ereport(ERROR,
					(errcode(ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION),
					 (errmsg("SCRAM channel binding check failed"))));
#else
		/* shouldn't happen, because we checked this earlier already */
		FUNC2(ERROR, "channel binding not supported by this build");
#endif
	}
	else
	{
		/*
		 * If we are not using channel binding, the binding data is expected
		 * to always be "biws", which is "n,," base64-encoded, or "eSws",
		 * which is "y,,".  We also have to check whether the flag is the same
		 * one that the client originally sent.
		 */
		if (!(FUNC18(channel_binding, "biws") == 0 && state->cbind_flag == 'n') &&
			!(FUNC18(channel_binding, "eSws") == 0 && state->cbind_flag == 'y'))
			FUNC3(ERROR,
					(FUNC4(ERRCODE_PROTOCOL_VIOLATION),
					 (FUNC6("unexpected SCRAM channel-binding attribute in client-final-message"))));
	}

	state->client_final_nonce = FUNC16(&p, 'r');

	/* ignore optional extensions, read until we find "p" attribute */
	do
	{
		proof = p - 1;
		value = FUNC15(&p, &attr);
	} while (attr != 'p');

	client_proof_len = FUNC10(FUNC19(value));
	client_proof = FUNC8(client_proof_len);
	if (FUNC11(value, FUNC19(value), client_proof,
					  client_proof_len) != SCRAM_KEY_LEN)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC6("malformed SCRAM message"),
				 FUNC5("Malformed proof in client-final-message.")));
	FUNC7(state->ClientProof, client_proof, SCRAM_KEY_LEN);
	FUNC9(client_proof);

	if (*p != '\0')
		FUNC3(ERROR,
				(FUNC4(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC6("malformed SCRAM message"),
				 FUNC5("Garbage found at the end of client-final-message.")));

	state->client_final_message_without_proof = FUNC8(proof - begin + 1);
	FUNC7(state->client_final_message_without_proof, input, proof - begin);
	state->client_final_message_without_proof[proof - begin] = '\0';
}