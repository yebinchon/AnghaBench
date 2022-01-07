
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mechswitch {int brand; } ;


 char const** BRAND_NAMES ;

const char *brand_name(struct mechswitch ms) {
  return BRAND_NAMES[ms.brand - 1];
}
