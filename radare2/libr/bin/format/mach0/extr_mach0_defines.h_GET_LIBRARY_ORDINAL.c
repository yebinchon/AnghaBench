
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;



__attribute__((used)) static inline uint16_t GET_LIBRARY_ORDINAL(uint16_t n_desc) {
 return (((n_desc) >> 8u) & 0xffu);
}
