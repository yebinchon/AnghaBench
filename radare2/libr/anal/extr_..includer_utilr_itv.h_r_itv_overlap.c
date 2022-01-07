
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_4__ {scalar_t__ addr; scalar_t__ size; } ;
typedef TYPE_1__ RInterval ;



__attribute__((used)) static inline bool r_itv_overlap(RInterval itv, RInterval x) {
 const ut64 end = itv.addr + itv.size, end1 = x.addr + x.size;
 return (!end1 || itv.addr < end1) && (!end || x.addr < end);
}
