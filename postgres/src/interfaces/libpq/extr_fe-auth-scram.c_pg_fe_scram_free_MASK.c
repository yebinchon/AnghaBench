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
struct TYPE_3__ {struct TYPE_3__* server_final_message; struct TYPE_3__* nonce; struct TYPE_3__* salt; struct TYPE_3__* server_first_message; struct TYPE_3__* client_final_message_without_proof; struct TYPE_3__* client_first_message_bare; struct TYPE_3__* client_nonce; struct TYPE_3__* sasl_mechanism; struct TYPE_3__* password; } ;
typedef  TYPE_1__ fe_scram_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void
FUNC1(void *opaq)
{
	fe_scram_state *state = (fe_scram_state *) opaq;

	if (state->password)
		FUNC0(state->password);
	if (state->sasl_mechanism)
		FUNC0(state->sasl_mechanism);

	/* client messages */
	if (state->client_nonce)
		FUNC0(state->client_nonce);
	if (state->client_first_message_bare)
		FUNC0(state->client_first_message_bare);
	if (state->client_final_message_without_proof)
		FUNC0(state->client_final_message_without_proof);

	/* first message from server */
	if (state->server_first_message)
		FUNC0(state->server_first_message);
	if (state->salt)
		FUNC0(state->salt);
	if (state->nonce)
		FUNC0(state->nonce);

	/* final message from server */
	if (state->server_final_message)
		FUNC0(state->server_final_message);

	FUNC0(state);
}