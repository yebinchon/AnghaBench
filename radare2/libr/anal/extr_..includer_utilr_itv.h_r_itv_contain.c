
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_3__ {scalar_t__ addr; scalar_t__ size; } ;
typedef TYPE_1__ RInterval ;



__attribute__((used)) static inline bool r_itv_contain(RInterval itv, ut64 addr) {
 const ut64 end = itv.addr + itv.size;
 return itv.addr <= addr && (!end || addr < end);
}
