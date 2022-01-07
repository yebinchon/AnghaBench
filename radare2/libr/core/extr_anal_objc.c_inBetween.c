
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_3__ {scalar_t__ vsize; scalar_t__ vaddr; } ;
typedef TYPE_1__ RBinSection ;


 int R_BETWEEN (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ UT64_MAX ;

__attribute__((used)) static bool inBetween(RBinSection *s, ut64 addr) {
 if (!s || addr == UT64_MAX) {
  return 0;
 }
 ut64 from = s->vaddr;
 ut64 to = from + s->vsize;
 return R_BETWEEN (from, addr, to);
}
