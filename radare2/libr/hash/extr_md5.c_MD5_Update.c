
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_3__ {int* count; int const* buffer; int state; } ;
typedef TYPE_1__ R_MD5_CTX ;


 int MD5Transform (int ,int const*) ;
 int memmove (void*,void*,int) ;

void MD5_Update(R_MD5_CTX *context, const ut8 *input, ut32 inputLen) {
 ut32 i;


 ut32 index = (ut32)((context->count[0] >> 3) & 0x3F);


 if ((context->count[0] += ((ut32)inputLen << 3)) < ((ut32)inputLen << 3)) {
  context->count[1]++;
 }
 context->count[1] += ((ut32)inputLen >> 29);

 ut32 partLen = 64 - index;


 if (inputLen >= partLen) {
  memmove ((void*)&context->buffer[index], (void*)input, partLen);
  MD5Transform (context->state, context->buffer);
  for (i = partLen; i + 63 < inputLen; i += 64) {
   MD5Transform (context->state, &input[i]);
  }
  index = 0;
 } else {
  i = 0;
 }

 memmove ((void*)&context->buffer[index], (void*)&input[i], inputLen - i);
}
