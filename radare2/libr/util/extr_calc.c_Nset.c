
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_3__ {double d; scalar_t__ n; } ;
typedef TYPE_1__ RNumCalcValue ;



__attribute__((used)) static inline RNumCalcValue Nset(ut64 v) { RNumCalcValue n; n.d = (double)v; n.n = v; return n; }
