
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int colorOn ;

void nmseffect_set_color(int setting) {
 if (setting)
  colorOn = 1;
 else
  colorOn = 0;
}
