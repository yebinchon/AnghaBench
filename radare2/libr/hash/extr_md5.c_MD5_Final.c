
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_4__ {int* count; int* state; } ;
typedef TYPE_1__ R_MD5_CTX ;


 int Encode (int *,int*,int) ;
 int MD5_Update (TYPE_1__*,int *,int) ;
 int * PADDING ;
 int r_mem_memzero (void*,int) ;

void MD5_Final(ut8 digest[16], R_MD5_CTX *context) {
 ut8 bits[8];


 Encode (bits, context->count, 8);


 ut32 index = (ut32)((context->count[0] >> 3) & 0x3f);
 ut32 padLen = (index < 56) ? (56 - index) : (120 - index);
 MD5_Update (context, PADDING, padLen);


 MD5_Update (context, bits, 8);


 Encode (digest, context->state, 16);


 r_mem_memzero ((void*)context, sizeof (*context));
}
