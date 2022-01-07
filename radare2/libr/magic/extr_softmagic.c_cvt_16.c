
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union VALUETYPE {int dummy; } VALUETYPE ;
struct r_magic {int dummy; } ;


 int DO_CVT (int ,int ) ;
 int h ;
 int ut16 ;

__attribute__((used)) static void cvt_16(union VALUETYPE *p, const struct r_magic *m) {
 DO_CVT (h, (ut16));
}
