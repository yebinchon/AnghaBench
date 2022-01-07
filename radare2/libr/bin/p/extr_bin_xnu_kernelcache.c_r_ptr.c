
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int RKernelCacheObj ;


 int K_PPTR (int ) ;
 int r_read_le64 (int *) ;

__attribute__((used)) static ut64 r_ptr (ut8 *buf, RKernelCacheObj *obj) {
 ut64 decorated_addr = r_read_le64 (buf);
 return K_PPTR (decorated_addr);
}
