
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MD5Context {int* count; unsigned char const* buffer; int state; } ;


 int __md5_Transform (int ,unsigned char const*) ;
 int memcpy (unsigned char const*,unsigned char const*,unsigned int) ;

__attribute__((used)) static void __md5_Update(struct MD5Context *context, const unsigned char *input, unsigned int inputLen)
{
 unsigned int i, idx, partLen;


 idx = (context->count[0] >> 3) & 0x3F;


 context->count[0] += (inputLen << 3);
 if (context->count[0] < (inputLen << 3))
  context->count[1]++;
 context->count[1] += (inputLen >> 29);

 partLen = 64 - idx;


 if (inputLen >= partLen) {
  memcpy(&context->buffer[idx], input, partLen);
  __md5_Transform(context->state, context->buffer);

  for (i = partLen; i + 63 < inputLen; i += 64)
   __md5_Transform(context->state, &input[i]);

  idx = 0;
 } else
  i = 0;


 memcpy(&context->buffer[idx], &input[i], inputLen - i);
}
