
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maskBlank ;

void nmseffect_set_maskblank(int setting) {
    if (setting)
        maskBlank = 1;
    else
        maskBlank = 0;
}
