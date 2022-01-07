
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_4__ {double d; int n; } ;
typedef TYPE_1__ RNumCalcValue ;



__attribute__((used)) static inline RNumCalcValue Nsubi(RNumCalcValue n, ut64 v) { n.d -= (double)v; n.n -= v; return n; }
