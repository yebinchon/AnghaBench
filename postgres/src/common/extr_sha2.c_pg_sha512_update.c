
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int* bitcount; int const* buffer; } ;
typedef TYPE_1__ pg_sha512_ctx ;


 int ADDINC128 (int*,size_t) ;
 int PG_SHA512_BLOCK_LENGTH ;
 int SHA512_Transform (TYPE_1__*,int const*) ;
 int memcpy (int const*,int const*,size_t) ;

void
pg_sha512_update(pg_sha512_ctx *context, const uint8 *data, size_t len)
{
 size_t freespace,
    usedspace;


 if (len == 0)
  return;

 usedspace = (context->bitcount[0] >> 3) % PG_SHA512_BLOCK_LENGTH;
 if (usedspace > 0)
 {

  freespace = PG_SHA512_BLOCK_LENGTH - usedspace;

  if (len >= freespace)
  {

   memcpy(&context->buffer[usedspace], data, freespace);
   ADDINC128(context->bitcount, freespace << 3);
   len -= freespace;
   data += freespace;
   SHA512_Transform(context, context->buffer);
  }
  else
  {

   memcpy(&context->buffer[usedspace], data, len);
   ADDINC128(context->bitcount, len << 3);

   usedspace = freespace = 0;
   return;
  }
 }
 while (len >= PG_SHA512_BLOCK_LENGTH)
 {

  SHA512_Transform(context, data);
  ADDINC128(context->bitcount, PG_SHA512_BLOCK_LENGTH << 3);
  len -= PG_SHA512_BLOCK_LENGTH;
  data += PG_SHA512_BLOCK_LENGTH;
 }
 if (len > 0)
 {

  memcpy(context->buffer, data, len);
  ADDINC128(context->bitcount, len << 3);
 }

 usedspace = freespace = 0;
}
