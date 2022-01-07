
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int step; int result; } ;
typedef TYPE_1__ base64_encodestate ;


 void* base64_encode_value (int ) ;




int base64_encode_blockend(char* code_out, base64_encodestate* state_in)
{
 char* codechar = code_out;

 switch (state_in->step)
 {
 case 129:
  *codechar++ = base64_encode_value(state_in->result);
  *codechar++ = '=';
  *codechar++ = '=';
  break;
 case 128:
  *codechar++ = base64_encode_value(state_in->result);
  *codechar++ = '=';
  break;
 case 130:
  break;
 }
 *codechar++ = '\0';

 return (int)(codechar - code_out);
}
