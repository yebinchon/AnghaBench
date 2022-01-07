
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int xseed; } ;
typedef TYPE_1__ RandomState ;


 int pg_erand48 (int ) ;

__attribute__((used)) static int64
getrand(RandomState *random_state, int64 min, int64 max)
{
 return min + (int64) ((max - min + 1) * pg_erand48(random_state->xseed));
}
