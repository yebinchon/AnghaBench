
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* bitcount; int buffer; int state; } ;
typedef TYPE_1__ R_SHA384_CTX ;


 int SHA384_BLOCK_LENGTH ;
 int SHA512_DIGEST_LENGTH ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int sha384_initial_hash_value ;

void SHA384_Init(R_SHA384_CTX *context) {
 if (context == (R_SHA384_CTX *) 0) {
  return;
 }
 memcpy (context->state, sha384_initial_hash_value, SHA512_DIGEST_LENGTH);
 memset (context->buffer, 0, SHA384_BLOCK_LENGTH);
 context->bitcount[0] = context->bitcount[1] = 0;
}
