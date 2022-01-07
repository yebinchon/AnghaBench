
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clearScr ;

void nmstermio_set_clearscr(int s) {
 if (s)
  clearScr = 1;
 else
  clearScr = 0;
}
