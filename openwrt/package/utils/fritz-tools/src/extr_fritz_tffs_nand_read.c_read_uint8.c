
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;



__attribute__((used)) static inline uint8_t read_uint8(void *buf, ptrdiff_t off)
{
 return *(uint8_t *)(buf + off);
}
