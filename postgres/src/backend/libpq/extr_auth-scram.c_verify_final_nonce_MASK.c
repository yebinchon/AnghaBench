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
struct TYPE_3__ {scalar_t__ server_nonce; scalar_t__ client_final_nonce; scalar_t__ client_nonce; } ;
typedef  TYPE_1__ scram_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,int) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC2(scram_state *state)
{
	int			client_nonce_len = FUNC1(state->client_nonce);
	int			server_nonce_len = FUNC1(state->server_nonce);
	int			final_nonce_len = FUNC1(state->client_final_nonce);

	if (final_nonce_len != client_nonce_len + server_nonce_len)
		return false;
	if (FUNC0(state->client_final_nonce, state->client_nonce, client_nonce_len) != 0)
		return false;
	if (FUNC0(state->client_final_nonce + client_nonce_len, state->server_nonce, server_nonce_len) != 0)
		return false;

	return true;
}