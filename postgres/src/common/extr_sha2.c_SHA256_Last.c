
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_4__ {int bitcount; int* buffer; } ;
typedef TYPE_1__ pg_sha256_ctx ;


 int PG_SHA256_BLOCK_LENGTH ;
 unsigned int PG_SHA256_SHORT_BLOCK_LENGTH ;
 int REVERSE64 (int,int) ;
 int SHA256_Transform (TYPE_1__*,int*) ;
 int memset (int*,int ,unsigned int) ;

__attribute__((used)) static void
SHA256_Last(pg_sha256_ctx *context)
{
 unsigned int usedspace;

 usedspace = (context->bitcount >> 3) % PG_SHA256_BLOCK_LENGTH;


 REVERSE64(context->bitcount, context->bitcount);

 if (usedspace > 0)
 {

  context->buffer[usedspace++] = 0x80;

  if (usedspace <= PG_SHA256_SHORT_BLOCK_LENGTH)
  {

   memset(&context->buffer[usedspace], 0, PG_SHA256_SHORT_BLOCK_LENGTH - usedspace);
  }
  else
  {
   if (usedspace < PG_SHA256_BLOCK_LENGTH)
   {
    memset(&context->buffer[usedspace], 0, PG_SHA256_BLOCK_LENGTH - usedspace);
   }

   SHA256_Transform(context, context->buffer);


   memset(context->buffer, 0, PG_SHA256_SHORT_BLOCK_LENGTH);
  }
 }
 else
 {

  memset(context->buffer, 0, PG_SHA256_SHORT_BLOCK_LENGTH);


  *context->buffer = 0x80;
 }

 *(uint64 *) &context->buffer[PG_SHA256_SHORT_BLOCK_LENGTH] = context->bitcount;


 SHA256_Transform(context, context->buffer);
}
