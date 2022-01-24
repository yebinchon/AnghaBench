#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* data; int len; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  Port ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_REQ_SASL ; 
 int /*<<< orphan*/  AUTH_REQ_SASL_CONT ; 
 int /*<<< orphan*/  AUTH_REQ_SASL_FIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG4 ; 
 int EOF ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FrontendProtocol ; 
 int /*<<< orphan*/  PG_MAX_SASL_MESSAGE_LENGTH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SASL_EXCHANGE_CONTINUE ; 
 int SASL_EXCHANGE_SUCCESS ; 
 int STATUS_EOF ; 
 int STATUS_ERROR ; 
 int STATUS_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (void*,char const*,int,char**,int*,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC11 (int /*<<< orphan*/ *,char const*,char*) ; 
 int FUNC12 () ; 
 scalar_t__ FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int FUNC16 (TYPE_1__*,int) ; 
 char* FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC20(Port *port, char *shadow_pass, char **logdetail)
{
	StringInfoData sasl_mechs;
	int			mtype;
	StringInfoData buf;
	void	   *scram_opaq = NULL;
	char	   *output = NULL;
	int			outputlen = 0;
	const char *input;
	int			inputlen;
	int			result;
	bool		initial;

	/*
	 * SASL auth is not supported for protocol versions before 3, because it
	 * relies on the overall message length word to determine the SASL payload
	 * size in AuthenticationSASLContinue and PasswordMessage messages.  (We
	 * used to have a hard rule that protocol messages must be parsable
	 * without relying on the length word, but we hardly care about older
	 * protocol version anymore.)
	 */
	if (FUNC1(FrontendProtocol) < 3)
		FUNC4(FATAL,
				(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC6("SASL authentication is not supported in protocol version 2")));

	/*
	 * Send the SASL authentication request to user.  It includes the list of
	 * authentication mechanisms that are supported.
	 */
	FUNC7(&sasl_mechs);

	FUNC10(port, &sasl_mechs);
	/* Put another '\0' to mark that list is finished. */
	FUNC2(&sasl_mechs, '\0');

	FUNC19(port, AUTH_REQ_SASL, sasl_mechs.data, sasl_mechs.len);
	FUNC8(sasl_mechs.data);

	/*
	 * Loop through SASL message exchange.  This exchange can consist of
	 * multiple messages sent in both directions.  First message is always
	 * from the client.  All messages from client to server are password
	 * packets (type 'p').
	 */
	initial = true;
	do
	{
		FUNC18();
		mtype = FUNC12();
		if (mtype != 'p')
		{
			/* Only log error if client didn't disconnect. */
			if (mtype != EOF)
			{
				FUNC4(ERROR,
						(FUNC5(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC6("expected SASL response, got message type %d",
								mtype)));
			}
			else
				return STATUS_EOF;
		}

		/* Get the actual SASL message */
		FUNC7(&buf);
		if (FUNC13(&buf, PG_MAX_SASL_MESSAGE_LENGTH))
		{
			/* EOF - pq_getmessage already logged error */
			FUNC8(buf.data);
			return STATUS_ERROR;
		}

		FUNC3(DEBUG4, "processing received SASL response of length %d", buf.len);

		/*
		 * The first SASLInitialResponse message is different from the others.
		 * It indicates which SASL mechanism the client selected, and contains
		 * an optional Initial Client Response payload.  The subsequent
		 * SASLResponse messages contain just the SASL payload.
		 */
		if (initial)
		{
			const char *selected_mech;

			selected_mech = FUNC17(&buf);

			/*
			 * Initialize the status tracker for message exchanges.
			 *
			 * If the user doesn't exist, or doesn't have a valid password, or
			 * it's expired, we still go through the motions of SASL
			 * authentication, but tell the authentication method that the
			 * authentication is "doomed". That is, it's going to fail, no
			 * matter what.
			 *
			 * This is because we don't want to reveal to an attacker what
			 * usernames are valid, nor which users have a valid password.
			 */
			scram_opaq = FUNC11(port, selected_mech, shadow_pass);

			inputlen = FUNC16(&buf, 4);
			if (inputlen == -1)
				input = NULL;
			else
				input = FUNC14(&buf, inputlen);

			initial = false;
		}
		else
		{
			inputlen = buf.len;
			input = FUNC14(&buf, buf.len);
		}
		FUNC15(&buf);

		/*
		 * The StringInfo guarantees that there's a \0 byte after the
		 * response.
		 */
		FUNC0(input == NULL || input[inputlen] == '\0');

		/*
		 * we pass 'logdetail' as NULL when doing a mock authentication,
		 * because we should already have a better error message in that case
		 */
		result = FUNC9(scram_opaq, input, inputlen,
									  &output, &outputlen,
									  logdetail);

		/* input buffer no longer used */
		FUNC8(buf.data);

		if (output)
		{
			/*
			 * Negotiation generated data to be sent to the client.
			 */
			FUNC3(DEBUG4, "sending SASL challenge of length %u", outputlen);

			if (result == SASL_EXCHANGE_SUCCESS)
				FUNC19(port, AUTH_REQ_SASL_FIN, output, outputlen);
			else
				FUNC19(port, AUTH_REQ_SASL_CONT, output, outputlen);

			FUNC8(output);
		}
	} while (result == SASL_EXCHANGE_CONTINUE);

	/* Oops, Something bad happened */
	if (result != SASL_EXCHANGE_SUCCESS)
	{
		return STATUS_ERROR;
	}

	return STATUS_OK;
}