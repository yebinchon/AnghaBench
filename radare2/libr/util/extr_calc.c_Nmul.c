
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n; int d; } ;
typedef TYPE_1__ RNumCalcValue ;



__attribute__((used)) static inline RNumCalcValue Nmul(RNumCalcValue n, RNumCalcValue v) {
 n.d *= v.d;
 n.n *= v.n;
 return n;
}
