
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jsonsl_state_st {int dummy; } ;
struct jsonsl_st {int dummy; } ;



size_t jsonsl_get_size(int nlevels)
{
    return sizeof (struct jsonsl_st) + ( (nlevels-1) * sizeof (struct jsonsl_state_st)) ;
}
