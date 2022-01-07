
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_3__ {int a_width; int n; int c; int sign; int type; } ;
typedef TYPE_1__ ebc_index_t ;


 int EBC_INDEX64 ;
 int EBC_INDEX_MINUS ;
 int EBC_INDEX_PLUS ;
 int EBC_NTH_BIT (int) ;
 int EBC_N_BIT_MASK (int) ;

__attribute__((used)) static int decode_index64(const ut8 *data, ebc_index_t *index) {
 ut64 tmp = *(ut64*)data;
 index->type = EBC_INDEX64;
 index->sign = tmp & EBC_NTH_BIT(63) ? EBC_INDEX_PLUS : EBC_INDEX_MINUS;
 index->a_width = ((tmp >> 60) & EBC_N_BIT_MASK(2)) * 8;
 index->n = tmp & EBC_N_BIT_MASK(index->a_width);
 index->c = (tmp >> index->a_width) & EBC_N_BIT_MASK(60- index->a_width);
 return 0;
}
