
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int bitcount; int const* buffer; } ;
typedef TYPE_1__ pg_sha256_ctx ;


 int PG_SHA256_BLOCK_LENGTH ;
 int SHA256_Transform (TYPE_1__*,int const*) ;
 int memcpy (int const*,int const*,size_t) ;

void
pg_sha256_update(pg_sha256_ctx *context, const uint8 *data, size_t len)
{
 size_t freespace,
    usedspace;


 if (len == 0)
  return;

 usedspace = (context->bitcount >> 3) % PG_SHA256_BLOCK_LENGTH;
 if (usedspace > 0)
 {

  freespace = PG_SHA256_BLOCK_LENGTH - usedspace;

  if (len >= freespace)
  {

   memcpy(&context->buffer[usedspace], data, freespace);
   context->bitcount += freespace << 3;
   len -= freespace;
   data += freespace;
   SHA256_Transform(context, context->buffer);
  }
  else
  {

   memcpy(&context->buffer[usedspace], data, len);
   context->bitcount += len << 3;

   usedspace = freespace = 0;
   return;
  }
 }
 while (len >= PG_SHA256_BLOCK_LENGTH)
 {

  SHA256_Transform(context, data);
  context->bitcount += PG_SHA256_BLOCK_LENGTH << 3;
  len -= PG_SHA256_BLOCK_LENGTH;
  data += PG_SHA256_BLOCK_LENGTH;
 }
 if (len > 0)
 {

  memcpy(context->buffer, data, len);
  context->bitcount += len << 3;
 }

 usedspace = freespace = 0;
}
