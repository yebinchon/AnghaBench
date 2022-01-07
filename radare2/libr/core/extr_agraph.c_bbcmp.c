
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addr; } ;
typedef TYPE_1__ RAnalBlock ;



__attribute__((used)) static int bbcmp(RAnalBlock *a, RAnalBlock *b) {
 return a->addr - b->addr;
}
