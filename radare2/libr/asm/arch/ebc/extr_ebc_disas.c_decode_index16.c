
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut16 ;
struct TYPE_3__ {int a_width; int n; int c; int sign; int type; } ;
typedef TYPE_1__ ebc_index_t ;


 int EBC_INDEX16 ;
 int EBC_INDEX_MINUS ;
 int EBC_INDEX_PLUS ;
 int EBC_N_BIT_MASK (int) ;

__attribute__((used)) static int decode_index16(const ut8 *data, ebc_index_t *index) {
 ut16 tmp = *(ut16*)data;
 index->type = EBC_INDEX16;
 index->sign = tmp & 0x8000 ? EBC_INDEX_PLUS : EBC_INDEX_MINUS;
 index->a_width = ((tmp >> 12) & EBC_N_BIT_MASK(2)) * 2;
 index->n = tmp & EBC_N_BIT_MASK(index->a_width);
 index->c = (tmp >> index->a_width) & EBC_N_BIT_MASK(12 - index->a_width);
 return 0;
}
