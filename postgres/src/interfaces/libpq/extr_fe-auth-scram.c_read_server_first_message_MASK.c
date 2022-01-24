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
struct TYPE_4__ {char* client_nonce; int iterations; int /*<<< orphan*/  saltlen; int /*<<< orphan*/ * salt; int /*<<< orphan*/ * nonce; int /*<<< orphan*/ * server_first_message; TYPE_2__* conn; } ;
typedef  TYPE_1__ fe_scram_state ;
struct TYPE_5__ {int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char*,scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char**,char,int /*<<< orphan*/ *) ; 
 void* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int FUNC9 (char*,char**,int) ; 

__attribute__((used)) static bool
FUNC10(fe_scram_state *state, char *input)
{
	PGconn	   *conn = state->conn;
	char	   *iterations_str;
	char	   *endptr;
	char	   *encoded_salt;
	char	   *nonce;
	int			decoded_salt_len;

	state->server_first_message = FUNC7(input);
	if (state->server_first_message == NULL)
	{
		FUNC5(&conn->errorMessage,
						  FUNC0("out of memory\n"));
		return false;
	}

	/* parse the message */
	nonce = FUNC6(&input, 'r',
							&conn->errorMessage);
	if (nonce == NULL)
	{
		/* read_attr_value() has generated an error string */
		return false;
	}

	/* Verify immediately that the server used our part of the nonce */
	if (FUNC8(nonce) < FUNC8(state->client_nonce) ||
		FUNC2(nonce, state->client_nonce, FUNC8(state->client_nonce)) != 0)
	{
		FUNC5(&conn->errorMessage,
						  FUNC0("invalid SCRAM response (nonce mismatch)\n"));
		return false;
	}

	state->nonce = FUNC7(nonce);
	if (state->nonce == NULL)
	{
		FUNC5(&conn->errorMessage,
						  FUNC0("out of memory\n"));
		return false;
	}

	encoded_salt = FUNC6(&input, 's', &conn->errorMessage);
	if (encoded_salt == NULL)
	{
		/* read_attr_value() has generated an error string */
		return false;
	}
	decoded_salt_len = FUNC3(FUNC8(encoded_salt));
	state->salt = FUNC1(decoded_salt_len);
	if (state->salt == NULL)
	{
		FUNC5(&conn->errorMessage,
						  FUNC0("out of memory\n"));
		return false;
	}
	state->saltlen = FUNC4(encoded_salt,
								   FUNC8(encoded_salt),
								   state->salt,
								   decoded_salt_len);
	if (state->saltlen < 0)
	{
		FUNC5(&conn->errorMessage,
						  FUNC0("malformed SCRAM message (invalid salt)\n"));
		return false;
	}

	iterations_str = FUNC6(&input, 'i', &conn->errorMessage);
	if (iterations_str == NULL)
	{
		/* read_attr_value() has generated an error string */
		return false;
	}
	state->iterations = FUNC9(iterations_str, &endptr, 10);
	if (*endptr != '\0' || state->iterations < 1)
	{
		FUNC5(&conn->errorMessage,
						  FUNC0("malformed SCRAM message (invalid iteration count)\n"));
		return false;
	}

	if (*input != '\0')
		FUNC5(&conn->errorMessage,
						  FUNC0("malformed SCRAM message (garbage at end of server-first-message)\n"));

	return true;
}