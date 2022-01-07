
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ordinal ;



__attribute__((used)) static inline void SET_LIBRARY_ORDINAL(uint16_t *n_desc, uint8_t ordinal) {
 *n_desc = (((*n_desc) & 0x00ff) | (((ordinal) & 0xff) << 8));
}
