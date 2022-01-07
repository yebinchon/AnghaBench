
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static inline void put_16(unsigned char *s, wchar_t c, int endian)
{
 endian &= 1;
 s[endian] = c>>8;
 s[endian^1] = c;
}
