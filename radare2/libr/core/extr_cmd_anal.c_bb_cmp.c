
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
typedef TYPE_1__ RAnalBlock ;



__attribute__((used)) static int bb_cmp(const void *a, const void *b) {
 const RAnalBlock *ba = a;
 const RAnalBlock *bb = b;
 return ba->addr - bb->addr;
}
