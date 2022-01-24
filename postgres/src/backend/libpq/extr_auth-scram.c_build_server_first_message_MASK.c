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
struct TYPE_3__ {char* server_nonce; int /*<<< orphan*/  server_first_message; int /*<<< orphan*/  iterations; int /*<<< orphan*/  salt; int /*<<< orphan*/  client_nonce; } ;
typedef  TYPE_1__ scram_state ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int SCRAM_RAW_NONCE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC9(scram_state *state)
{
	/*------
	 * The syntax for the server-first-message is: (RFC 5802)
	 *
	 * server-first-message =
	 *					 [reserved-mext ","] nonce "," salt ","
	 *					 iteration-count ["," extensions]
	 *
	 * nonce		   = "r=" c-nonce [s-nonce]
	 *					 ;; Second part provided by server.
	 *
	 * c-nonce		   = printable
	 *
	 * s-nonce		   = printable
	 *
	 * salt			   = "s=" base64
	 *
	 * iteration-count = "i=" posit-number
	 *					 ;; A positive number.
	 *
	 * Example:
	 *
	 * r=fyko+d2lbbFgONRv9qkxdawL3rfcNHYJY1ZVvWVs7j,s=QSXCR+Q6sek8bf92,i=4096
	 *------
	 */

	/*
	 * Per the spec, the nonce may consist of any printable ASCII characters.
	 * For convenience, however, we don't use the whole range available,
	 * rather, we generate some random bytes, and base64 encode them.
	 */
	char		raw_nonce[SCRAM_RAW_NONCE_LEN];
	int			encoded_len;

	if (!FUNC6(raw_nonce, SCRAM_RAW_NONCE_LEN))
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INTERNAL_ERROR),
				 FUNC2("could not generate random nonce")));

	encoded_len = FUNC4(SCRAM_RAW_NONCE_LEN);
	/* don't forget the zero-terminator */
	state->server_nonce = FUNC3(encoded_len + 1);
	encoded_len = FUNC5(raw_nonce, SCRAM_RAW_NONCE_LEN,
								state->server_nonce, encoded_len);
	if (encoded_len < 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INTERNAL_ERROR),
				 FUNC2("could not encode random nonce")));
	state->server_nonce[encoded_len] = '\0';

	state->server_first_message =
		FUNC7("r=%s%s,s=%s,i=%u",
				 state->client_nonce, state->server_nonce,
				 state->salt, state->iterations);

	return FUNC8(state->server_first_message);
}