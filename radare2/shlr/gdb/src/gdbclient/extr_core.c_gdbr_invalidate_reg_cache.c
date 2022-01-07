
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int valid; } ;


 TYPE_1__ reg_cache ;

void gdbr_invalidate_reg_cache() {
 reg_cache.valid = 0;
}
