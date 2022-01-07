
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngr_checksum {scalar_t__ c0; int c1; } ;



__attribute__((used)) static inline void
netgear_checksum_add (struct ngr_checksum * c, unsigned char * buf, size_t len)
{
 size_t i;

 for (i=0; i<len; i++) {
  c->c0 += buf[i] & 0xff;
  c->c1 += c->c0;
 }
}
