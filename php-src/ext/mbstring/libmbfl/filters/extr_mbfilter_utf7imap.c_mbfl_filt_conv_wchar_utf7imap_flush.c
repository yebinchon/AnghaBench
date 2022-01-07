
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int cache; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int* mbfl_utf7imap_base64_table ;
 int stub1 (int,int ) ;
 int stub10 (int,int ) ;
 int stub11 (int,int ) ;
 int stub12 (int,int ) ;
 int stub13 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;

int mbfl_filt_conv_wchar_utf7imap_flush(mbfl_convert_filter *filter)
{
 int status, cache;

 status = filter->status;
 cache = filter->cache;
 filter->status = 0;
 filter->cache = 0;

 switch (status) {
 case 1:
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 10) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 4) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(cache << 2) & 0x3c], filter->data));
  CK((*filter->output_function)(0x2d, filter->data));
  break;

 case 2:
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 14) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 8) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 2) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(cache << 4) & 0x30], filter->data));
  CK((*filter->output_function)(0x2d, filter->data));
  break;

 case 3:
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 12) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 6) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_utf7imap_base64_table[cache & 0x3f], filter->data));
  CK((*filter->output_function)(0x2d, filter->data));
  break;
 }
 return 0;
}
