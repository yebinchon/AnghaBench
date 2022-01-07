
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; int sasl_mechanism; } ;
typedef TYPE_1__ fe_scram_state ;


 scalar_t__ FE_SCRAM_FINISHED ;
 int SCRAM_SHA_256_PLUS_NAME ;
 scalar_t__ strcmp (int ,int ) ;

bool
pg_fe_scram_channel_bound(void *opaq)
{
 fe_scram_state *state = (fe_scram_state *) opaq;


 if (state == ((void*)0))
  return 0;


 if (state->state != FE_SCRAM_FINISHED)
  return 0;


 if (strcmp(state->sasl_mechanism, SCRAM_SHA_256_PLUS_NAME) != 0)
  return 0;


 return 1;
}
