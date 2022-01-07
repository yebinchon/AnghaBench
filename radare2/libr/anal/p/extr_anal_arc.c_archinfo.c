
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; } ;
typedef TYPE_1__ RAnal ;






__attribute__((used)) static int archinfo(RAnal *anal, int query) {
 if (anal->bits != 16) {
  return -1;
 }
 switch (query) {
 case 130:
  return 2;
 case 128:

  return 2;
 case 129:
  return 8;
 default:
  return -1;
 }
}
