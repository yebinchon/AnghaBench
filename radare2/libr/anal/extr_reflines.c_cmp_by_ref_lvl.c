
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ level; } ;
typedef TYPE_1__ RAnalRefline ;



__attribute__((used)) static int cmp_by_ref_lvl(const RAnalRefline *a, const RAnalRefline *b) {
 return a->level < b->level;
}
