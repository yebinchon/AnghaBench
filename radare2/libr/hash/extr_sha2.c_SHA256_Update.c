
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_4__ {int bitcount; int * buffer; } ;
typedef TYPE_1__ R_SHA256_CTX ;


 int SHA256_BLOCK_LENGTH ;
 int SHA256_Transform (TYPE_1__*,int *) ;
 int memcpy (int *,int const*,size_t) ;

void SHA256_Update(R_SHA256_CTX *context, const ut8 *data, size_t len) {
 unsigned int freespace, usedspace;


 if (!context || !data || len == 0) {
  return;
 }

 usedspace = (context->bitcount >> 3) % SHA256_BLOCK_LENGTH;
 if (usedspace > 0) {

  freespace = SHA256_BLOCK_LENGTH - usedspace;

  if (len >= freespace) {

   memcpy (&context->buffer[usedspace], data, freespace);
   context->bitcount += freespace << 3;
   len -= freespace;
   data += freespace;
   SHA256_Transform (context, (ut32 *) context->buffer);
  } else {

   memcpy (&context->buffer[usedspace], data, len);
   context->bitcount += len << 3;

   usedspace = freespace = 0;
   return;
  }
 }
 while (len >= SHA256_BLOCK_LENGTH) {

  SHA256_Transform (context, (ut32 *) data);
  context->bitcount += SHA256_BLOCK_LENGTH << 3;
  len -= SHA256_BLOCK_LENGTH;
  data += SHA256_BLOCK_LENGTH;
 }
 if (len > 0) {

  memcpy (context->buffer, data, len);
  context->bitcount += len << 3;
 }

 usedspace = freespace = 0;
}
