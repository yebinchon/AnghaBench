
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char oc; char* calc_buf; size_t calc_i; } ;
typedef TYPE_1__ RNumCalc ;
typedef int RNum ;



__attribute__((used)) static int cin_get(RNum *num, RNumCalc *nc, char *c) {
 if (nc->oc) {
  *c = nc->oc;
  nc->oc = 0;
 } else {
  if (!nc->calc_buf || !*nc->calc_buf) {
   return 0;
  }
  *c = nc->calc_buf[nc->calc_i];
  if (*c) {
   nc->calc_i++;
  } else {
   return 0;
  }
 }
 return 1;
}
