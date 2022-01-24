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
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_3__ {char* client_first_message_bare; char* server_first_message; char* client_final_message_without_proof; int /*<<< orphan*/  ServerKey; } ;
typedef  TYPE_1__ scram_state ;
typedef  int /*<<< orphan*/  scram_HMAC_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int SCRAM_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char const*,int,char*,int) ; 
 char* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static char *
FUNC9(scram_state *state)
{
	uint8		ServerSignature[SCRAM_KEY_LEN];
	char	   *server_signature_base64;
	int			siglen;
	scram_HMAC_ctx ctx;

	/* calculate ServerSignature */
	FUNC6(&ctx, state->ServerKey, SCRAM_KEY_LEN);
	FUNC7(&ctx,
					  state->client_first_message_bare,
					  FUNC8(state->client_first_message_bare));
	FUNC7(&ctx, ",", 1);
	FUNC7(&ctx,
					  state->server_first_message,
					  FUNC8(state->server_first_message));
	FUNC7(&ctx, ",", 1);
	FUNC7(&ctx,
					  state->client_final_message_without_proof,
					  FUNC8(state->client_final_message_without_proof));
	FUNC5(ServerSignature, &ctx);

	siglen = FUNC2(SCRAM_KEY_LEN);
	/* don't forget the zero-terminator */
	server_signature_base64 = FUNC1(siglen + 1);
	siglen = FUNC3((const char *) ServerSignature,
						   SCRAM_KEY_LEN, server_signature_base64,
						   siglen);
	if (siglen < 0)
		FUNC0(ERROR, "could not encode server signature");
	server_signature_base64[siglen] = '\0';

	/*------
	 * The syntax for the server-final-message is: (RFC 5802)
	 *
	 * verifier		   = "v=" base64
	 *					 ;; base-64 encoded ServerSignature.
	 *
	 * server-final-message = (server-error / verifier)
	 *					 ["," extensions]
	 *
	 *------
	 */
	return FUNC4("v=%s", server_signature_base64);
}