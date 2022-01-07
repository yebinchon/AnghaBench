
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ addr; } ;
typedef TYPE_1__ RCoreAsmHit ;



__attribute__((used)) static int rcoreasm_address_comparator(RCoreAsmHit *a, RCoreAsmHit *b){
 if (a->addr == b->addr) {
  return 0;
 }
 if (a->addr < b->addr) {
  return -1;
 }
 return 1;
}
