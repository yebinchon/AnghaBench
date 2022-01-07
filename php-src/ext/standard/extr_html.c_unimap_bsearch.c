
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short un_code_point; unsigned char cs_code; } ;
typedef TYPE_1__ uni_to_enc ;



__attribute__((used)) static inline unsigned char unimap_bsearch(const uni_to_enc *table, unsigned code_key_a, size_t num)
{
 const uni_to_enc *l = table,
      *h = &table[num-1],
      *m;
 unsigned short code_key;


 if (code_key_a > 0xFFFFU)
  return 0;

 code_key = (unsigned short) code_key_a;

 while (l <= h) {
  m = l + (h - l) / 2;
  if (code_key < m->un_code_point)
   h = m - 1;
  else if (code_key > m->un_code_point)
   l = m + 1;
  else
   return m->cs_code;
 }
 return 0;
}
