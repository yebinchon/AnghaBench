
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void W8(unsigned char* dst, short s)
{
    dst[0] = (unsigned char)((s + 32768) >> 8);
}
