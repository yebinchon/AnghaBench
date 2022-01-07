
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mechswitch {size_t variant; } ;


 char const** VARIANT_NAMES ;

const char *variant_name(struct mechswitch ms) {
  return VARIANT_NAMES[ms.variant];
}
