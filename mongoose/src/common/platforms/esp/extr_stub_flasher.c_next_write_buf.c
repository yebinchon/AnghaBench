
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t bwi; TYPE_1__* bufs; } ;
struct TYPE_3__ {scalar_t__ flags; scalar_t__ len; } ;


 size_t NUM_BUFS ;
 TYPE_2__ ub ;

__attribute__((used)) static void next_write_buf(void) {
  ub.bwi++;
  if (ub.bwi == NUM_BUFS) ub.bwi = 0;
  ub.bufs[ub.bwi].len = 0;
  ub.bufs[ub.bwi].flags = 0;
}
