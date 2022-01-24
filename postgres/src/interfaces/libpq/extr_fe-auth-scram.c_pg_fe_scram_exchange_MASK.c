#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int state; TYPE_2__* conn; } ;
typedef  TYPE_1__ fe_scram_state ;
struct TYPE_9__ {int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 int FE_SCRAM_FINISHED ; 
#define  FE_SCRAM_INIT 130 
#define  FE_SCRAM_NONCE_SENT 129 
#define  FE_SCRAM_PROOF_SENT 128 
 char* FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void
FUNC8(void *opaq, char *input, int inputlen,
					 char **output, int *outputlen,
					 bool *done, bool *success)
{
	fe_scram_state *state = (fe_scram_state *) opaq;
	PGconn	   *conn = state->conn;

	*done = false;
	*success = false;
	*output = NULL;
	*outputlen = 0;

	/*
	 * Check that the input length agrees with the string length of the input.
	 * We can ignore inputlen after this.
	 */
	if (state->state != FE_SCRAM_INIT)
	{
		if (inputlen == 0)
		{
			FUNC3(&conn->errorMessage,
							  FUNC2("malformed SCRAM message (empty message)\n"));
			goto error;
		}
		if (inputlen != FUNC6(input))
		{
			FUNC3(&conn->errorMessage,
							  FUNC2("malformed SCRAM message (length mismatch)\n"));
			goto error;
		}
	}

	switch (state->state)
	{
		case FE_SCRAM_INIT:
			/* Begin the SCRAM handshake, by sending client nonce */
			*output = FUNC1(state);
			if (*output == NULL)
				goto error;

			*outputlen = FUNC6(*output);
			*done = false;
			state->state = FE_SCRAM_NONCE_SENT;
			break;

		case FE_SCRAM_NONCE_SENT:
			/* Receive salt and server nonce, send response. */
			if (!FUNC5(state, input))
				goto error;

			*output = FUNC0(state);
			if (*output == NULL)
				goto error;

			*outputlen = FUNC6(*output);
			*done = false;
			state->state = FE_SCRAM_PROOF_SENT;
			break;

		case FE_SCRAM_PROOF_SENT:
			/* Receive server signature */
			if (!FUNC4(state, input))
				goto error;

			/*
			 * Verify server signature, to make sure we're talking to the
			 * genuine server.
			 */
			if (FUNC7(state))
				*success = true;
			else
			{
				*success = false;
				FUNC3(&conn->errorMessage,
								  FUNC2("incorrect server signature\n"));
			}
			*done = true;
			state->state = FE_SCRAM_FINISHED;
			break;

		default:
			/* shouldn't happen */
			FUNC3(&conn->errorMessage,
							  FUNC2("invalid SCRAM exchange state\n"));
			goto error;
	}
	return;

error:
	*done = true;
	*success = false;
	return;
}