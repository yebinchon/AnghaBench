
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ addr; } ;
typedef TYPE_1__ RAnalFunction ;



__attribute__((used)) static int compareAddress(const RAnalFunction *a, const RAnalFunction *b) {
 return a && b && a->addr && b->addr && a->addr > b->addr;
}
