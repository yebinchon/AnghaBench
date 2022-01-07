
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_5__ {scalar_t__ const member_1; scalar_t__ const member_0; scalar_t__ size; scalar_t__ addr; } ;
typedef TYPE_1__ RInterval ;


 scalar_t__ R_MAX (scalar_t__,scalar_t__) ;
 scalar_t__ R_MIN (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline RInterval r_itv_intersect(RInterval itv, RInterval x) {
 const ut64 addr = R_MAX (itv.addr, x.addr);
 const ut64 end = R_MIN (itv.addr + itv.size - 1, x.addr + x.size - 1) + 1;
 RInterval rai = {addr, end - addr};
 return rai;
}
