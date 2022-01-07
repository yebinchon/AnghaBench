
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int M0110_ERROR ;
 int M0110_NULL ;

__attribute__((used)) static inline uint8_t raw2scan(uint8_t raw) { return (raw == M0110_NULL) ? M0110_NULL : ((raw == M0110_ERROR) ? M0110_ERROR : (((raw & 0x80) | ((raw & 0x7F) >> 1)))); }
