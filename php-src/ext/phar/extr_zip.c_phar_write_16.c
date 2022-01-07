
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline void phar_write_16(char buffer[2], uint32_t value)
{
 buffer[1] = (unsigned char) ((value & 0xff00) >> 8);
 buffer[0] = (unsigned char) (value & 0xff);
}
