
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct des_state {int i; void* buflo; void* bufhi; int * keyhi; int * keylo; } ;


 void* be32 (int const*) ;
 int r_des_permute_block0 (void**,void**) ;
 int r_des_permute_block1 (void**,void**) ;
 int r_des_round (void**,void**,int *,int *) ;
 int wbe32 (int *,void*) ;

__attribute__((used)) static int des_decrypt (struct des_state *st, const ut8 *input, ut8 *output) {
 if (!st || !input || !output) {
  return 0;
 }
 st->buflo = be32 (input + 0);
 st->bufhi = be32 (input + 4);

 r_des_permute_block0 (&st->buflo, &st->bufhi);

 for (st->i = 0; st->i < 16; st->i++) {
    r_des_round (&st->buflo, &st->bufhi, &st->keylo[15 - st->i], &st->keyhi[15 - st->i]);
 }


 r_des_permute_block1 (&st->bufhi, &st->buflo);

 wbe32 (output + 0, st->bufhi);
 wbe32 (output + 4, st->buflo);
 return 1;
}
