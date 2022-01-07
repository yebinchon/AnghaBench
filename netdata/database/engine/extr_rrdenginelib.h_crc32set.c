
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uLong ;



__attribute__((used)) static inline void crc32set(void *crcp, uLong crc)
{
    *(uint32_t *)crcp = crc;
}
