
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline__ unsigned long get_be32(void *buf)
{
 unsigned char *p = buf;

 return (((unsigned long) p[0] << 24) +
         ((unsigned long) p[1] << 16) +
         ((unsigned long) p[2] << 8) +
         (unsigned long) p[3]);
}
