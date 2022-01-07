
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;



__attribute__((used)) static ut32 swap4(ut32 sv) {
 ut32 rv;
 ut8 *s = (ut8 *)(void *)&sv;
 ut8 *d = (ut8 *)(void *)&rv;
 d[0] = s[3];
 d[1] = s[2];
 d[2] = s[1];
 d[3] = s[0];
 return rv;
}
