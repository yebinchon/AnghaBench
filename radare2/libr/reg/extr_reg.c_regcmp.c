
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int offset; int size; } ;
typedef TYPE_1__ RRegItem ;



__attribute__((used)) static int regcmp(RRegItem *a, RRegItem *b) {
 int offa = (a->offset * 16) + a->size;
 int offb = (b->offset * 16) + b->size;
 return offa > offb;
}
