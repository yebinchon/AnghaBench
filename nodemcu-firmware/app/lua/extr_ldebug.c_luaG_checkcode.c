
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sizecode; } ;
typedef TYPE_1__ Proto ;


 int NO_REG ;
 scalar_t__ symbexec (TYPE_1__ const*,int ,int ) ;

int luaG_checkcode (const Proto *pt) {
  return (symbexec(pt, pt->sizecode, NO_REG) != 0);
}
