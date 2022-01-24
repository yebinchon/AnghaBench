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
typedef  int uint8 ;
typedef  int /*<<< orphan*/  scram_HMAC_ctx ;
struct TYPE_3__ {char const* client_first_message_bare; char const* server_first_message; int /*<<< orphan*/  SaltedPassword; int /*<<< orphan*/  iterations; int /*<<< orphan*/  saltlen; int /*<<< orphan*/  salt; int /*<<< orphan*/  password; } ;
typedef  TYPE_1__ fe_scram_state ;

/* Variables and functions */
 int SCRAM_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7(fe_scram_state *state,
					   const char *client_final_message_without_proof,
					   uint8 *result)
{
	uint8		StoredKey[SCRAM_KEY_LEN];
	uint8		ClientKey[SCRAM_KEY_LEN];
	uint8		ClientSignature[SCRAM_KEY_LEN];
	int			i;
	scram_HMAC_ctx ctx;

	/*
	 * Calculate SaltedPassword, and store it in 'state' so that we can reuse
	 * it later in verify_server_signature.
	 */
	FUNC5(state->password, state->salt, state->saltlen,
						 state->iterations, state->SaltedPassword);

	FUNC0(state->SaltedPassword, ClientKey);
	FUNC1(ClientKey, SCRAM_KEY_LEN, StoredKey);

	FUNC3(&ctx, StoredKey, SCRAM_KEY_LEN);
	FUNC4(&ctx,
					  state->client_first_message_bare,
					  FUNC6(state->client_first_message_bare));
	FUNC4(&ctx, ",", 1);
	FUNC4(&ctx,
					  state->server_first_message,
					  FUNC6(state->server_first_message));
	FUNC4(&ctx, ",", 1);
	FUNC4(&ctx,
					  client_final_message_without_proof,
					  FUNC6(client_final_message_without_proof));
	FUNC2(ClientSignature, &ctx);

	for (i = 0; i < SCRAM_KEY_LEN; i++)
		result[i] = ClientKey[i] ^ ClientSignature[i];
}