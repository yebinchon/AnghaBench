
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union VALUETYPE {int dummy; } VALUETYPE ;
struct r_magic {int dummy; } ;


 int DO_CVT (int ,int ) ;
 int b ;
 int ut8 ;

__attribute__((used)) static void cvt_8(union VALUETYPE *p, const struct r_magic *m) {
 DO_CVT (b, (ut8));
}
