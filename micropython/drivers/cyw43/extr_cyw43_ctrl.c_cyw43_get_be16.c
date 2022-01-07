
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint32_t ;



__attribute__((used)) static inline uint32_t cyw43_get_be16(const uint8_t *buf) {
    return buf[0] << 8 | buf[1];
}
