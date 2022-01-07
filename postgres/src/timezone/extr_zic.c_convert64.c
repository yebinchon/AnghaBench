
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zic_t ;



__attribute__((used)) static void
convert64(const zic_t val, char *const buf)
{
 int i;
 int shift;
 unsigned char *const b = (unsigned char *) buf;

 for (i = 0, shift = 56; i < 8; ++i, shift -= 8)
  b[i] = val >> shift;
}
