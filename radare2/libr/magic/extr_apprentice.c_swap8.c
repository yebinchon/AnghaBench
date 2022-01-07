
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;



__attribute__((used)) static ut64 swap8(ut64 sv) {
 ut64 rv;
 ut8 *s = (ut8 *)(void *)&sv;
 ut8 *d = (ut8 *)(void *)&rv;
 d[0] = s[7];
 d[1] = s[6];
 d[2] = s[5];
 d[3] = s[4];
 d[4] = s[3];
 d[5] = s[2];
 d[6] = s[1];
 d[7] = s[0];

 return rv;
}
