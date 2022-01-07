
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct csum_state {int size; } ;




 int csum16_update (int *,int ,struct csum_state*) ;
 int csum8_update (int *,int ,struct csum_state*) ;

void
csum_update(uint8_t *p, uint32_t len, struct csum_state *css)
{
 switch (css->size) {
 case 128:
  csum8_update(p,len,css);
  break;
 case 129:
  csum16_update(p,len,css);
  break;
 }
}
