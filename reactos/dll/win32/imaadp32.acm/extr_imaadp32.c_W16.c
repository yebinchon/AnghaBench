
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char HIBYTE (short) ;
 unsigned char LOBYTE (short) ;

__attribute__((used)) static inline void W16(unsigned char* dst, short s)
{
    dst[0] = LOBYTE(s);
    dst[1] = HIBYTE(s);
}
