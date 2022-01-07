
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int d; int n; } ;
typedef TYPE_1__ RNumCalcValue ;



__attribute__((used)) static inline RNumCalcValue Nmod(RNumCalcValue n, RNumCalcValue v) {
 if (v.d) {
  n.d = (n.d - (n.d / v.d));
 } else {
  n.d = 0;
 }
 if (v.n) {
  n.n %= v.n;
 } else {
  n.n = 0;
 }
 return n;
}
