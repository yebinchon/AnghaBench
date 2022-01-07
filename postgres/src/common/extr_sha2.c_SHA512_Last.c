
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_4__ {int* bitcount; int* buffer; } ;
typedef TYPE_1__ pg_sha512_ctx ;


 int PG_SHA512_BLOCK_LENGTH ;
 unsigned int PG_SHA512_SHORT_BLOCK_LENGTH ;
 int REVERSE64 (int,int) ;
 int SHA512_Transform (TYPE_1__*,int*) ;
 int memset (int*,int ,unsigned int) ;

__attribute__((used)) static void
SHA512_Last(pg_sha512_ctx *context)
{
 unsigned int usedspace;

 usedspace = (context->bitcount[0] >> 3) % PG_SHA512_BLOCK_LENGTH;


 REVERSE64(context->bitcount[0], context->bitcount[0]);
 REVERSE64(context->bitcount[1], context->bitcount[1]);

 if (usedspace > 0)
 {

  context->buffer[usedspace++] = 0x80;

  if (usedspace <= PG_SHA512_SHORT_BLOCK_LENGTH)
  {

   memset(&context->buffer[usedspace], 0, PG_SHA512_SHORT_BLOCK_LENGTH - usedspace);
  }
  else
  {
   if (usedspace < PG_SHA512_BLOCK_LENGTH)
   {
    memset(&context->buffer[usedspace], 0, PG_SHA512_BLOCK_LENGTH - usedspace);
   }

   SHA512_Transform(context, context->buffer);


   memset(context->buffer, 0, PG_SHA512_BLOCK_LENGTH - 2);
  }
 }
 else
 {

  memset(context->buffer, 0, PG_SHA512_SHORT_BLOCK_LENGTH);


  *context->buffer = 0x80;
 }

 *(uint64 *) &context->buffer[PG_SHA512_SHORT_BLOCK_LENGTH] = context->bitcount[1];
 *(uint64 *) &context->buffer[PG_SHA512_SHORT_BLOCK_LENGTH + 8] = context->bitcount[0];


 SHA512_Transform(context, context->buffer);
}
