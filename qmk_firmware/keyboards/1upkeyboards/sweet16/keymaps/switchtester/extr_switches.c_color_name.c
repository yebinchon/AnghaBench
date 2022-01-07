
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mechswitch {size_t color; } ;


 char const** COLOR_NAMES ;

const char *color_name(struct mechswitch ms) {
  return COLOR_NAMES[ms.color];
}
