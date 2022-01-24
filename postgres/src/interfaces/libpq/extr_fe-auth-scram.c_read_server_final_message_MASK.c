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
struct TYPE_4__ {int /*<<< orphan*/  ServerSignature; int /*<<< orphan*/  server_final_message; TYPE_2__* conn; } ;
typedef  TYPE_1__ fe_scram_state ;
struct TYPE_5__ {int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 int SCRAM_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char* FUNC7 (char**,char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static bool
FUNC10(fe_scram_state *state, char *input)
{
	PGconn	   *conn = state->conn;
	char	   *encoded_server_signature;
	char	   *decoded_server_signature;
	int			server_signature_len;

	state->server_final_message = FUNC8(input);
	if (!state->server_final_message)
	{
		FUNC6(&conn->errorMessage,
						  FUNC1("out of memory\n"));
		return false;
	}

	/* Check for error result. */
	if (*input == 'e')
	{
		char	   *errmsg = FUNC7(&input, 'e',
											 &conn->errorMessage);

		FUNC6(&conn->errorMessage,
						  FUNC1("error received from server in SCRAM exchange: %s\n"),
						  errmsg);
		return false;
	}

	/* Parse the message. */
	encoded_server_signature = FUNC7(&input, 'v',
											   &conn->errorMessage);
	if (encoded_server_signature == NULL)
	{
		/* read_attr_value() has generated an error message */
		return false;
	}

	if (*input != '\0')
		FUNC6(&conn->errorMessage,
						  FUNC1("malformed SCRAM message (garbage at end of server-final-message)\n"));

	server_signature_len = FUNC4(FUNC9(encoded_server_signature));
	decoded_server_signature = FUNC2(server_signature_len);
	if (!decoded_server_signature)
	{
		FUNC6(&conn->errorMessage,
						  FUNC1("out of memory\n"));
		return false;
	}

	server_signature_len = FUNC5(encoded_server_signature,
										 FUNC9(encoded_server_signature),
										 decoded_server_signature,
										 server_signature_len);
	if (server_signature_len != SCRAM_KEY_LEN)
	{
		FUNC0(decoded_server_signature);
		FUNC6(&conn->errorMessage,
						  FUNC1("malformed SCRAM message (invalid server signature)\n"));
		return false;
	}
	FUNC3(state->ServerSignature, decoded_server_signature, SCRAM_KEY_LEN);
	FUNC0(decoded_server_signature);

	return true;
}