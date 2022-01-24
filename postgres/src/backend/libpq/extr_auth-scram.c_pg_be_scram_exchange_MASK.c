#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int state; char* logdetail; int /*<<< orphan*/  doomed; } ;
typedef  TYPE_1__ scram_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int SASL_EXCHANGE_CONTINUE ; 
 int SASL_EXCHANGE_FAILURE ; 
 int SASL_EXCHANGE_SUCCESS ; 
 int SCRAM_AUTH_FINISHED ; 
#define  SCRAM_AUTH_INIT 129 
#define  SCRAM_AUTH_SALT_SENT 128 
 char* FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char const*) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

int
FUNC14(void *opaq, const char *input, int inputlen,
					 char **output, int *outputlen, char **logdetail)
{
	scram_state *state = (scram_state *) opaq;
	int			result;

	*output = NULL;

	/*
	 * If the client didn't include an "Initial Client Response" in the
	 * SASLInitialResponse message, send an empty challenge, to which the
	 * client will respond with the same data that usually comes in the
	 * Initial Client Response.
	 */
	if (input == NULL)
	{
		FUNC0(state->state == SCRAM_AUTH_INIT);

		*output = FUNC8("");
		*outputlen = 0;
		return SASL_EXCHANGE_CONTINUE;
	}

	/*
	 * Check that the input length agrees with the string length of the input.
	 * We can ignore inputlen after this.
	 */
	if (inputlen == 0)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC7("malformed SCRAM message"),
				 FUNC6("The message is empty.")));
	if (inputlen != FUNC11(input))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC7("malformed SCRAM message"),
				 FUNC6("Message length does not match input length.")));

	switch (state->state)
	{
		case SCRAM_AUTH_INIT:

			/*
			 * Initialization phase.  Receive the first message from client
			 * and be sure that it parsed correctly.  Then send the challenge
			 * to the client.
			 */
			FUNC10(state, input);

			/* prepare message to send challenge */
			*output = FUNC2(state);

			state->state = SCRAM_AUTH_SALT_SENT;
			result = SASL_EXCHANGE_CONTINUE;
			break;

		case SCRAM_AUTH_SALT_SENT:

			/*
			 * Final phase for the server.  Receive the response to the
			 * challenge previously sent, verify, and let the client know that
			 * everything went well (or not).
			 */
			FUNC9(state, input);

			if (!FUNC13(state))
				FUNC4(ERROR,
						(FUNC5(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC7("invalid SCRAM response"),
						 FUNC6("Nonce does not match.")));

			/*
			 * Now check the final nonce and the client proof.
			 *
			 * If we performed a "mock" authentication that we knew would fail
			 * from the get go, this is where we fail.
			 *
			 * The SCRAM specification includes an error code,
			 * "invalid-proof", for authentication failure, but it also allows
			 * erroring out in an application-specific way.  We choose to do
			 * the latter, so that the error message for invalid password is
			 * the same for all authentication methods.  The caller will call
			 * ereport(), when we return SASL_EXCHANGE_FAILURE with no output.
			 *
			 * NB: the order of these checks is intentional.  We calculate the
			 * client proof even in a mock authentication, even though it's
			 * bound to fail, to thwart timing attacks to determine if a role
			 * with the given name exists or not.
			 */
			if (!FUNC12(state) || state->doomed)
			{
				result = SASL_EXCHANGE_FAILURE;
				break;
			}

			/* Build final message for client */
			*output = FUNC1(state);

			/* Success! */
			result = SASL_EXCHANGE_SUCCESS;
			state->state = SCRAM_AUTH_FINISHED;
			break;

		default:
			FUNC3(ERROR, "invalid SCRAM exchange state");
			result = SASL_EXCHANGE_FAILURE;
	}

	if (result == SASL_EXCHANGE_FAILURE && state->logdetail && logdetail)
		*logdetail = state->logdetail;

	if (*output)
		*outputlen = FUNC11(*output);

	return result;
}