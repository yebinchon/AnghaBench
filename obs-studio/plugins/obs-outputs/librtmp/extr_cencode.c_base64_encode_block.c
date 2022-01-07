
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char result; int step; int stepcount; } ;
typedef TYPE_1__ base64_encodestate ;


 void* base64_encode_value (char) ;




int base64_encode_block(const char* plaintext_in, int length_in, char* code_out, base64_encodestate* state_in)
{
 const char* plainchar = plaintext_in;
 const char* const plaintextend = plaintext_in + length_in;
 char* codechar = code_out;
 char result;
 char fragment;

 result = state_in->result;

 switch (state_in->step)
 {
  while (1)
  {
 case 130:
   if (plainchar == plaintextend)
   {
    state_in->result = result;
    state_in->step = 130;
    return (int)(codechar - code_out);
   }
   fragment = *plainchar++;
   result = (fragment & 0x0fc) >> 2;
   *codechar++ = base64_encode_value(result);
   result = (fragment & 0x003) << 4;

 case 129:
   if (plainchar == plaintextend)
   {
    state_in->result = result;
    state_in->step = 129;
    return (int)(codechar - code_out);
   }
   fragment = *plainchar++;
   result |= (fragment & 0x0f0) >> 4;
   *codechar++ = base64_encode_value(result);
   result = (fragment & 0x00f) << 2;

 case 128:
   if (plainchar == plaintextend)
   {
    state_in->result = result;
    state_in->step = 128;
    return (int)(codechar - code_out);
   }
   fragment = *plainchar++;
   result |= (fragment & 0x0c0) >> 6;
   *codechar++ = base64_encode_value(result);
   result = (fragment & 0x03f) >> 0;
   *codechar++ = base64_encode_value(result);

   ++(state_in->stepcount);





  }
 }

 return (int)(codechar - code_out);
}
