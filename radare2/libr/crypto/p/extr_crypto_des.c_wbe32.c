
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;



__attribute__((used)) static void wbe32(ut8 *buf4, ut32 val) {
 buf4[0] = (val >> 24);
 buf4[1] = (val >> 16) & 0xFF;
 buf4[2] = (val >> 8) & 0xFF;
 buf4[3] = val & 0xFF;
}
