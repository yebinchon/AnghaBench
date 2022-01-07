
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
typedef int uint32_t ;



uint32_t dalias_hash(char *s0) {
 unsigned char *s = (void *) s0;
 uint_fast32_t h = 0;
 while(*s) {
  h = 16 * h + *s++;
  h ^= h >> 24 & 0xf0;
 }
 return h & 0xfffffff;
}
