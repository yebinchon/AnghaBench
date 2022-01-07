
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int autoDecrypt ;

void nmseffect_set_autodecrypt(int setting) {
 if (setting)
  autoDecrypt = 1;
 else
  autoDecrypt = 0;
}
