
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;



__attribute__((used)) static ut16 swap2(ut16 sv) {
 ut16 rv;
 ut8 *s = (ut8 *)(void *)&sv;
 ut8 *d = (ut8 *)(void *)&rv;
 d[0] = s[1];
 d[1] = s[0];
 return rv;
}
