
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int address; } ;
typedef TYPE_1__ RParsedPointer ;
typedef int RKernelCacheObj ;


 int r_parse_pointer (TYPE_1__*,int ,int *) ;

__attribute__((used)) static ut64 p_ptr (ut64 decorated_addr, RKernelCacheObj *obj) {
 RParsedPointer ptr;
 r_parse_pointer (&ptr, decorated_addr, obj);
 return ptr.address;
}
