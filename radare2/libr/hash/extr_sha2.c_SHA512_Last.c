
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_4__ {int* bitcount; int* buffer; } ;
typedef TYPE_1__ R_SHA512_CTX ;


 int REVERSE64 (int,int) ;
 int SHA512_BLOCK_LENGTH ;
 unsigned int SHA512_SHORT_BLOCK_LENGTH ;
 int SHA512_Transform (TYPE_1__*,int*) ;
 int memset (int*,int ,unsigned int) ;

void SHA512_Last(R_SHA512_CTX *context) {
 unsigned int usedspace;

 usedspace = (context->bitcount[0] >> 3) % SHA512_BLOCK_LENGTH;


 REVERSE64 (context->bitcount[0], context->bitcount[0]);
 REVERSE64 (context->bitcount[1], context->bitcount[1]);

 if (usedspace > 0) {

  context->buffer[usedspace++] = 0x80;

  if (usedspace <= SHA512_SHORT_BLOCK_LENGTH) {

   memset (&context->buffer[usedspace], 0, SHA512_SHORT_BLOCK_LENGTH - usedspace);
  } else {
   if (usedspace < SHA512_BLOCK_LENGTH) {
    memset (&context->buffer[usedspace], 0, SHA512_BLOCK_LENGTH - usedspace);
   }

   SHA512_Transform (context, (ut64 *) context->buffer);


   memset (context->buffer, 0, SHA512_BLOCK_LENGTH - 2);
  }
 } else {

  memset (context->buffer, 0, SHA512_SHORT_BLOCK_LENGTH);


  *context->buffer = 0x80;
 }





 {
  ut64 *p = (ut64 *) ((ut8 *) context->buffer + SHA512_SHORT_BLOCK_LENGTH);
  *p = (ut64) context->bitcount[1];
  p = (ut64 *) ((ut8 *) context->buffer + SHA512_SHORT_BLOCK_LENGTH + 8);
  *p = (ut64) context->bitcount[0];
 }



 SHA512_Transform (context, (ut64 *) context->buffer);
}
