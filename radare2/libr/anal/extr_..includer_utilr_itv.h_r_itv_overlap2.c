
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_5__ {int member_1; int member_0; } ;
typedef TYPE_1__ RInterval ;


 int r_itv_overlap (TYPE_1__,TYPE_1__) ;

__attribute__((used)) static inline bool r_itv_overlap2(RInterval itv, ut64 addr, ut64 size) {
 RInterval rai = {addr, size};
 return r_itv_overlap (itv, rai);
}
