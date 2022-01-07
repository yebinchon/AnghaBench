
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline void SET_COMM_ALIGN (uint16_t *n_desc, uint8_t align) {
 *n_desc = ((*n_desc & 0xf0ffu) | ((align & 0x0fu) << 8u));
}
