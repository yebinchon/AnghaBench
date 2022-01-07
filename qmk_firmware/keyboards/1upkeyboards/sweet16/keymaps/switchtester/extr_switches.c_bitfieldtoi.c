
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mechswitch {int brand; int variant; int color; } ;



int bitfieldtoi(struct mechswitch ms) {
  return ((ms.brand << 9) | (ms.variant << 5) | ms.color);
}
