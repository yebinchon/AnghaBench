
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_8__ {TYPE_1__* rebase_info; } ;
struct TYPE_7__ {int address; } ;
struct TYPE_6__ {int kernel_base; } ;
typedef TYPE_2__ RParsedPointer ;
typedef TYPE_3__ RKernelCacheObj ;



__attribute__((used)) static bool r_parse_pointer(RParsedPointer *ptr, ut64 decorated_addr, RKernelCacheObj *obj) {





 if ((decorated_addr & 0x4000000000000000LL) == 0 && obj->rebase_info) {
  if (decorated_addr & 0x8000000000000000LL) {
   ptr->address = obj->rebase_info->kernel_base + (decorated_addr & 0xFFFFFFFFLL);
  } else {
   ptr->address = ((decorated_addr << 13) & 0xFF00000000000000LL) | (decorated_addr & 0x7ffffffffffLL);
   if (decorated_addr & 0x40000000000LL) {
    ptr->address |= 0xfffc0000000000LL;
   }
  }
 } else {
  ptr->address = decorated_addr;
 }

 return 1;
}
