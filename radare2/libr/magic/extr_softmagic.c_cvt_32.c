
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union VALUETYPE {int dummy; } VALUETYPE ;
struct r_magic {int dummy; } ;


 int DO_CVT (int ,int ) ;
 int l ;
 int ut32 ;

__attribute__((used)) static void cvt_32(union VALUETYPE *p, const struct r_magic *m) {
 DO_CVT (l, (ut32));
}
