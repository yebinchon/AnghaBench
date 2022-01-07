
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int W16 (unsigned char*,short) ;
 int W8 (unsigned char*,short) ;

__attribute__((used)) static inline void W8_16(unsigned char* dst, short s, int bytes)
{
    if(bytes == 1)
        W8(dst, s);
    else
        W16(dst, s);
}
