
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void
be32enc(void *buf, uint32_t u)
{
 uint8_t *p = buf;

 p[0] = ((uint8_t) ((u >> 24) & 0xff));
 p[1] = ((uint8_t) ((u >> 16) & 0xff));
 p[2] = ((uint8_t) ((u >> 8) & 0xff));
 p[3] = ((uint8_t) (u & 0xff));
}
