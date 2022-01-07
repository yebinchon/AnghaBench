
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ off; } ;
typedef TYPE_1__ RFlagsAtOffset ;



__attribute__((used)) static int flag_skiplist_cmp(const void *va, const void *vb) {
 const RFlagsAtOffset *a = (RFlagsAtOffset *)va, *b = (RFlagsAtOffset *)vb;
 if (a->off == b->off) {
  return 0;
 }
 return a->off < b->off? -1: 1;
}
