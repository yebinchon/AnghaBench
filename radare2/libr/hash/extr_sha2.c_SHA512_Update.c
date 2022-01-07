
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_4__ {int* bitcount; int * buffer; } ;
typedef TYPE_1__ R_SHA512_CTX ;


 int ADDINC128 (int*,size_t) ;
 int SHA512_BLOCK_LENGTH ;
 int SHA512_Transform (TYPE_1__*,int *) ;
 int memcpy (int *,int const*,size_t) ;

void SHA512_Update(R_SHA512_CTX *context, const ut8 *data, size_t len) {
 unsigned int freespace, usedspace;

 if (len == 0) {

  return;
 }


 if (!context || !data) {
  return;
 }

 usedspace = (context->bitcount[0] >> 3) % SHA512_BLOCK_LENGTH;
 if (usedspace > 0) {

  freespace = SHA512_BLOCK_LENGTH - usedspace;

  if (len >= freespace) {

   memcpy (&context->buffer[usedspace], data, freespace);
   ADDINC128 (context->bitcount, freespace << 3);
   len -= freespace;
   data += freespace;
   SHA512_Transform (context, (ut64 *) context->buffer);
  } else {

   memcpy (&context->buffer[usedspace], data, len);
   ADDINC128 (context->bitcount, len << 3);

   usedspace = freespace = 0;
   return;
  }
 }
 while (len >= SHA512_BLOCK_LENGTH) {

  SHA512_Transform (context, (ut64 *) data);
  ADDINC128 (context->bitcount, SHA512_BLOCK_LENGTH << 3);
  len -= SHA512_BLOCK_LENGTH;
  data += SHA512_BLOCK_LENGTH;
 }
 if (len > 0) {

  memcpy (context->buffer, data, len);
  ADDINC128 (context->bitcount, len << 3);
 }

 usedspace = freespace = 0;
}
