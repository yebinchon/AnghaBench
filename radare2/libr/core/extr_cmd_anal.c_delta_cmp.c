
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delta; } ;
typedef TYPE_1__ RAnalVar ;



__attribute__((used)) static int delta_cmp(const void *a, const void *b) {
 const RAnalVar *va = a;
 const RAnalVar *vb = b;
 return vb->delta - va->delta;
}
