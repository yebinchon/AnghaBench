
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngr_checksum {scalar_t__ c1; scalar_t__ c0; } ;



__attribute__((used)) static inline void
netgear_checksum_init (struct ngr_checksum * c)
{
 c->c0 = c->c1 = 0;
}
