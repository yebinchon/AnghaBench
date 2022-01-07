
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ server_nonce; scalar_t__ client_final_nonce; scalar_t__ client_nonce; } ;
typedef TYPE_1__ scram_state ;


 scalar_t__ memcmp (scalar_t__,scalar_t__,int) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static bool
verify_final_nonce(scram_state *state)
{
 int client_nonce_len = strlen(state->client_nonce);
 int server_nonce_len = strlen(state->server_nonce);
 int final_nonce_len = strlen(state->client_final_nonce);

 if (final_nonce_len != client_nonce_len + server_nonce_len)
  return 0;
 if (memcmp(state->client_final_nonce, state->client_nonce, client_nonce_len) != 0)
  return 0;
 if (memcmp(state->client_final_nonce + client_nonce_len, state->server_nonce, server_nonce_len) != 0)
  return 0;

 return 1;
}
