
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ addr; } ;
typedef TYPE_1__ RInterval ;



__attribute__((used)) static inline ut64 r_itv_end(RInterval itv) {
 return itv.addr + itv.size;
}
