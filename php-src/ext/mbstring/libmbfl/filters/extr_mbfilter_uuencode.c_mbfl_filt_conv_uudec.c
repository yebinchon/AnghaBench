
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int cache; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int UUDEC (int) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int* uuenc_begin_text ;

int mbfl_filt_conv_uudec(int c, mbfl_convert_filter * filter)
{
 int n;

 switch(filter->status) {
  case 132:

   if (filter->cache == 0 && c == 'b')
   {
    filter->status = 131;
    filter->cache = 1;
   }
   else if (c == '\n')
    filter->cache = 0;
   else
    filter->cache++;
   break;
  case 131:
   if (uuenc_begin_text[filter->cache++] != c) {

    filter->status = 132;
    break;
   }
   if (filter->cache == 5)
   {

    filter->status = 128;
    filter->cache = 0;
   }
   break;
  case 128:
   if (c == '\n')
    filter->status = 130;
   break;
  case 130:

   n = UUDEC(c);
   filter->cache = n << 24;
   filter->status = 136;
   break;
  case 136:

   n = UUDEC(c);
   filter->cache |= (n << 16);
   filter->status = 135;
   break;
  case 135:

   n = UUDEC(c);
   filter->cache |= (n << 8);
   filter->status = 134;
   break;
  case 134:

   n = UUDEC(c);
   filter->cache |= n;
   filter->status = 133;
   break;
  case 133:

   {
    int A, B, C, D = UUDEC(c);
    A = (filter->cache >> 16) & 0xff;
    B = (filter->cache >> 8) & 0xff;
    C = (filter->cache) & 0xff;
    n = (filter->cache >> 24) & 0xff;
    if (n-- > 0)
     CK((*filter->output_function)( (A << 2) | (B >> 4), filter->data));
    if (n-- > 0)
     CK((*filter->output_function)( (B << 4) | (C >> 2), filter->data));
    if (n-- > 0)
     CK((*filter->output_function)( (C << 6) | D, filter->data));
    filter->cache = n << 24;

    if (n == 0)
     filter->status = 129;
    else
     filter->status = 136;
   }
   break;
  case 129:

   filter->status = 130;
 }
 return c;
}
