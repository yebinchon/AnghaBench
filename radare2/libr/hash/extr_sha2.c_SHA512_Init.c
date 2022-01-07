
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* bitcount; int buffer; int state; } ;
typedef TYPE_1__ R_SHA512_CTX ;


 int SHA512_BLOCK_LENGTH ;
 int SHA512_DIGEST_LENGTH ;
 int memcpy (int ,int ,int ) ;
 int r_mem_memzero (int ,int ) ;
 int sha512_initial_hash_value ;

void SHA512_Init(R_SHA512_CTX *context) {
 if (context == (R_SHA512_CTX *) 0) {
  return;
 }
 memcpy (context->state, sha512_initial_hash_value, SHA512_DIGEST_LENGTH);
 r_mem_memzero (context->buffer, SHA512_BLOCK_LENGTH);
 context->bitcount[0] = context->bitcount[1] = 0;
}
