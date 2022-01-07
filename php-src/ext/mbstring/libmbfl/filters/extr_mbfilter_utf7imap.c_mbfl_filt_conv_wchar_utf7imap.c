
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int status; int cache; int data; int (* output_function ) (int,int ) ;int (* filter_function ) (int,TYPE_1__*) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSPLANE_SUPMAX ;
 int MBFL_WCSPLANE_SUPMIN ;
 int MBFL_WCSPLANE_UCS2MAX ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int* mbfl_utf7imap_base64_table ;
 int stub1 (int,TYPE_1__*) ;
 int stub10 (int,int ) ;
 int stub11 (int,int ) ;
 int stub12 (int,int ) ;
 int stub13 (int,int ) ;
 int stub14 (int,int ) ;
 int stub15 (int,int ) ;
 int stub16 (int,int ) ;
 int stub17 (int,int ) ;
 int stub18 (int,int ) ;
 int stub19 (int,int ) ;
 int stub2 (int,TYPE_1__*) ;
 int stub20 (int,int ) ;
 int stub21 (int,int ) ;
 int stub22 (int,int ) ;
 int stub23 (int,int ) ;
 int stub24 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;

int mbfl_filt_conv_wchar_utf7imap(int c, mbfl_convert_filter *filter)
{
 int n, s;

 n = 0;
 if (c == 0x26) {
  n = 1;
 } else if ((c >= 0x20 && c <= 0x7e) || c == 0) {
  n = 2;
 } else if (c >= 0 && c < MBFL_WCSPLANE_UCS2MAX) {
  ;
 } else if (c >= MBFL_WCSPLANE_SUPMIN && c < MBFL_WCSPLANE_SUPMAX) {
  s = ((c >> 10) - 0x40) | 0xd800;
  CK((*filter->filter_function)(s, filter));
  s = (c & 0x3ff) | 0xdc00;
  CK((*filter->filter_function)(s, filter));
  return c;
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
  return c;
 }

 switch (filter->status) {
 case 0:
  if (n != 0) {
   CK((*filter->output_function)(c, filter->data));
   if (n == 1) {
    CK((*filter->output_function)(0x2d, filter->data));
   }
  } else {
   CK((*filter->output_function)(0x26, filter->data));
   filter->status = 1;
   filter->cache = c;
  }
  break;


 case 1:
  s = filter->cache;
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 10) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 4) & 0x3f], filter->data));
  if (n != 0) {
   CK((*filter->output_function)(mbfl_utf7imap_base64_table[(s << 2) & 0x3c], filter->data));
   CK((*filter->output_function)(0x2d, filter->data));
   CK((*filter->output_function)(c, filter->data));
   if (n == 1) {
    CK((*filter->output_function)(0x2d, filter->data));
   }
   filter->status = 0;
  } else {
   filter->status = 2;
   filter->cache = ((s & 0xf) << 16) | c;
  }
  break;

 case 2:
  s = filter->cache;
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 14) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 8) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 2) & 0x3f], filter->data));
  if (n != 0) {
   CK((*filter->output_function)(mbfl_utf7imap_base64_table[(s << 4) & 0x30], filter->data));
   CK((*filter->output_function)(0x2d, filter->data));
   CK((*filter->output_function)(c, filter->data));
   if (n == 1) {
    CK((*filter->output_function)(0x2d, filter->data));
   }
   filter->status = 0;
  } else {
   filter->status = 3;
   filter->cache = ((s & 0x3) << 16) | c;
  }
  break;

 case 3:
  s = filter->cache;
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 12) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(s >> 6) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[s & 0x3f], filter->data));
  if (n != 0) {
   CK((*filter->output_function)(0x2d, filter->data));
   CK((*filter->output_function)(c, filter->data));
   if (n == 1) {
    CK((*filter->output_function)(0x2d, filter->data));
   }
   filter->status = 0;
  } else {
   filter->status = 1;
   filter->cache = c;
  }
  break;

 default:
  filter->status = 0;
  break;
 }

 return c;

}
