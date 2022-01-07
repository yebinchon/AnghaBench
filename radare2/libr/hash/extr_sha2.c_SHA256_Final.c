
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
struct TYPE_5__ {int bitcount; int* buffer; int * state; } ;
typedef TYPE_1__ R_SHA256_CTX ;


 int REVERSE32 (int ,int ) ;
 int REVERSE64 (int,int) ;
 int SHA256_BLOCK_LENGTH ;
 int SHA256_DIGEST_LENGTH ;
 unsigned int SHA256_SHORT_BLOCK_LENGTH ;
 int SHA256_Transform (TYPE_1__*,int *) ;
 int memcpy (int *,int *,int ) ;
 int memset (int*,int ,unsigned int) ;
 int r_mem_memzero (TYPE_1__*,int) ;

void SHA256_Final(ut8 *digest, R_SHA256_CTX *context) {
 ut32 *d = (ut32 *) digest;
 unsigned int usedspace;


 if (!context) {
  return;
 }


 if (digest != (ut8 *) 0) {
  usedspace = (context->bitcount >> 3) % SHA256_BLOCK_LENGTH;


  REVERSE64 (context->bitcount, context->bitcount);

  if (usedspace > 0) {

   context->buffer[usedspace++] = 0x80;

   if (usedspace <= SHA256_SHORT_BLOCK_LENGTH) {

    memset (&context->buffer[usedspace], 0, SHA256_SHORT_BLOCK_LENGTH - usedspace);
   } else {
    if (usedspace < SHA256_BLOCK_LENGTH) {
     memset (&context->buffer[usedspace], 0, SHA256_BLOCK_LENGTH - usedspace);
    }

    SHA256_Transform (context, (ut32 *) context->buffer);


    memset (context->buffer, 0, SHA256_SHORT_BLOCK_LENGTH);
   }
  } else {

   memset (context->buffer, 0, SHA256_SHORT_BLOCK_LENGTH);


   *context->buffer = 0x80;
  }




  {
   ut64 *p = (ut64 *) ((ut8 *) context->buffer + SHA256_SHORT_BLOCK_LENGTH);
   *p = (ut64) context->bitcount;
  }



  SHA256_Transform (context, (ut32 *) context->buffer);


  {

   int j;
   for (j = 0; j < 8; j++) {
    REVERSE32 (context->state[j], context->state[j]);
    *d++ = context->state[j];
   }
  }



 }


 r_mem_memzero (context, sizeof(*context));
 usedspace = 0;
}
