
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
typedef unsigned int uint16_t ;



__attribute__((used)) static inline uint8_t GET_COMM_ALIGN (uint16_t n_desc) {
 return (n_desc >> 8u) & 0x0fu;
}
