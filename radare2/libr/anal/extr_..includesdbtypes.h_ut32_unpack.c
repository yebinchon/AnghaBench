
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;



__attribute__((used)) static inline void ut32_unpack(char s[4], ut32 *u) {
 ut32 result = 0;
 result = (ut8) s[3];
 result <<= 8;
 result += (ut8) s[2];
 result <<= 8;
 result += (ut8) s[1];
 result <<= 8;
 result += (ut8) s[0];
 *u = result;
}
