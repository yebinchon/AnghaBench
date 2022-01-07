
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_3__ {int a_width; int n; int c; int sign; int type; } ;
typedef TYPE_1__ ebc_index_t ;


 int EBC_INDEX32 ;
 int EBC_INDEX_MINUS ;
 int EBC_INDEX_PLUS ;
 int EBC_NTH_BIT (int) ;
 int EBC_N_BIT_MASK (int) ;

__attribute__((used)) static int decode_index32(const ut8 *data, ebc_index_t *index) {
 ut32 tmp = *(ut32*)data;
 index->type = EBC_INDEX32;
 index->sign = tmp & EBC_NTH_BIT(31) ? EBC_INDEX_PLUS : EBC_INDEX_MINUS;
 index->a_width = ((tmp >> 28) & EBC_N_BIT_MASK(2)) * 4;
 index->n = tmp & EBC_N_BIT_MASK(index->a_width);
 index->c = (tmp >> index->a_width) & EBC_N_BIT_MASK(28 - index->a_width);
 return 0;
}
