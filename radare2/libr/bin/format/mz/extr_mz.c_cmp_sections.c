
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vaddr; } ;
typedef TYPE_1__ RBinSection ;



__attribute__((used)) static int cmp_sections(const void *a, const void *b) {
 const RBinSection *s_a, *s_b;

 s_a = a;
 s_b = b;

 return s_a->vaddr - s_b->vaddr;
}
