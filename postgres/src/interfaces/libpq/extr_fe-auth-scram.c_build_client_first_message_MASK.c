#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* client_nonce; void* client_first_message_bare; int /*<<< orphan*/  sasl_mechanism; TYPE_3__* conn; } ;
typedef  TYPE_1__ fe_scram_state ;
struct TYPE_13__ {char* channel_binding; int /*<<< orphan*/  errorMessage; scalar_t__ ssl_in_use; } ;
struct TYPE_12__ {int len; scalar_t__ data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  TYPE_3__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_2__) ; 
 int /*<<< orphan*/  SCRAM_RAW_NONCE_LEN ; 
 int /*<<< orphan*/  SCRAM_SHA_256_PLUS_NAME ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 

__attribute__((used)) static char *
FUNC15(fe_scram_state *state)
{
	PGconn	   *conn = state->conn;
	char		raw_nonce[SCRAM_RAW_NONCE_LEN + 1];
	char	   *result;
	int			channel_info_len;
	int			encoded_len;
	PQExpBufferData buf;

	/*
	 * Generate a "raw" nonce.  This is converted to ASCII-printable form by
	 * base64-encoding it.
	 */
	if (!FUNC10(raw_nonce, SCRAM_RAW_NONCE_LEN))
	{
		FUNC11(&conn->errorMessage,
						  FUNC6("could not generate nonce\n"));
		return NULL;
	}

	encoded_len = FUNC8(SCRAM_RAW_NONCE_LEN);
	/* don't forget the zero-terminator */
	state->client_nonce = FUNC7(encoded_len + 1);
	if (state->client_nonce == NULL)
	{
		FUNC11(&conn->errorMessage,
						  FUNC6("out of memory\n"));
		return NULL;
	}
	encoded_len = FUNC9(raw_nonce, SCRAM_RAW_NONCE_LEN,
								state->client_nonce, encoded_len);
	if (encoded_len < 0)
	{
		FUNC11(&conn->errorMessage,
						  FUNC6("could not encode nonce\n"));
		return NULL;
	}
	state->client_nonce[encoded_len] = '\0';

	/*
	 * Generate message.  The username is left empty as the backend uses the
	 * value provided by the startup packet.  Also, as this username is not
	 * prepared with SASLprep, the message parsing would fail if it includes
	 * '=' or ',' characters.
	 */

	FUNC5(&buf);

	/*
	 * First build the gs2-header with channel binding information.
	 */
	if (FUNC12(state->sasl_mechanism, SCRAM_SHA_256_PLUS_NAME) == 0)
	{
		FUNC0(conn->ssl_in_use);
		FUNC4(&buf, "p=tls-server-end-point");
	}
#ifdef HAVE_PGTLS_GET_PEER_CERTIFICATE_HASH
	else if (conn->channel_binding[0] != 'd' && /* disable */
			 conn->ssl_in_use)
	{
		/*
		 * Client supports channel binding, but thinks the server does not.
		 */
		appendPQExpBufferChar(&buf, 'y');
	}
#endif
	else
	{
		/*
		 * Client does not support channel binding, or has disabled it.
		 */
		FUNC3(&buf, 'n');
	}

	if (FUNC1(buf))
		goto oom_error;

	channel_info_len = buf.len;

	FUNC2(&buf, ",,n=,r=%s", state->client_nonce);
	if (FUNC1(buf))
		goto oom_error;

	/*
	 * The first message content needs to be saved without channel binding
	 * information.
	 */
	state->client_first_message_bare = FUNC13(buf.data + channel_info_len + 2);
	if (!state->client_first_message_bare)
		goto oom_error;

	result = FUNC13(buf.data);
	if (result == NULL)
		goto oom_error;

	FUNC14(&buf);
	return result;

oom_error:
	FUNC14(&buf);
	FUNC11(&conn->errorMessage,
					  FUNC6("out of memory\n"));
	return NULL;
}