#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  sasl_state; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int STATUS_ERROR ; 
 int STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char**,int*,int*,int*) ; 
 scalar_t__ FUNC4 (char*,int,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,char,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC7(PGconn *conn, int payloadlen, bool final)
{
	char	   *output;
	int			outputlen;
	bool		done;
	bool		success;
	int			res;
	char	   *challenge;

	/* Read the SASL challenge from the AuthenticationSASLContinue message. */
	challenge = FUNC2(payloadlen + 1);
	if (!challenge)
	{
		FUNC6(&conn->errorMessage,
						  FUNC1("out of memory allocating SASL buffer (%d)\n"),
						  payloadlen);
		return STATUS_ERROR;
	}

	if (FUNC4(challenge, payloadlen, conn))
	{
		FUNC0(challenge);
		return STATUS_ERROR;
	}
	/* For safety and convenience, ensure the buffer is NULL-terminated. */
	challenge[payloadlen] = '\0';

	FUNC3(conn->sasl_state,
						 challenge, payloadlen,
						 &output, &outputlen,
						 &done, &success);
	FUNC0(challenge);			/* don't need the input anymore */

	if (final && !done)
	{
		if (outputlen != 0)
			FUNC0(output);

		FUNC6(&conn->errorMessage,
						  FUNC1("AuthenticationSASLFinal received from server, but SASL authentication was not completed\n"));
		return STATUS_ERROR;
	}
	if (outputlen != 0)
	{
		/*
		 * Send the SASL response to the server.
		 */
		res = FUNC5(conn, 'p', output, outputlen);
		FUNC0(output);

		if (res != STATUS_OK)
			return STATUS_ERROR;
	}

	if (done && !success)
		return STATUS_ERROR;

	return STATUS_OK;
}