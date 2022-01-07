
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int value; } ;
typedef TYPE_1__ aarch64_cond ;


 TYPE_1__ const* aarch64_conds ;

const aarch64_cond *
get_inverted_cond (const aarch64_cond *cond)
{
  return &aarch64_conds[cond->value ^ 0x1];
}
