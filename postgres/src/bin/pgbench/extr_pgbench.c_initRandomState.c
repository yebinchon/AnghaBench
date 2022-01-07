
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int xseed; } ;
struct TYPE_4__ {unsigned short* xseed; } ;
typedef TYPE_1__ RandomState ;


 TYPE_3__ base_random_sequence ;
 int pg_jrand48 (int ) ;

__attribute__((used)) static void
initRandomState(RandomState *random_state)
{
 random_state->xseed[0] = (unsigned short)
  (pg_jrand48(base_random_sequence.xseed) & 0xFFFF);
 random_state->xseed[1] = (unsigned short)
  (pg_jrand48(base_random_sequence.xseed) & 0xFFFF);
 random_state->xseed[2] = (unsigned short)
  (pg_jrand48(base_random_sequence.xseed) & 0xFFFF);
}
