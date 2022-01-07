
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cpu; } ;
typedef TYPE_1__ RAnal ;


 int strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static int archinfo(RAnal *a, int q) {
 if (a->cpu && !strncmp (a->cpu, "vle", 3)) {
  return 2;
 }
 return 4;
}
