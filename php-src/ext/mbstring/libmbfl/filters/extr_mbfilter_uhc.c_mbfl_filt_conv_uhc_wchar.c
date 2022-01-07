
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int cache; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSGROUP_MASK ;
 int MBFL_WCSGROUP_THROUGH ;
 int MBFL_WCSPLANE_MASK ;
 int MBFL_WCSPLANE_UHC ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int* uhc1_ucs_table ;
 int uhc1_ucs_table_size ;
 int* uhc2_ucs_table ;
 int uhc2_ucs_table_size ;
 int* uhc3_ucs_table ;
 int uhc3_ucs_table_size ;

int
mbfl_filt_conv_uhc_wchar(int c, mbfl_convert_filter *filter)
{
 int c1, w = 0, flag = 0;

 switch (filter->status) {
 case 0:
  if (c >= 0 && c < 0x80) {
   CK((*filter->output_function)(c, filter->data));
  } else if (c > 0x80 && c < 0xff && c != 0xc9) {
   filter->status = 1;
   filter->cache = c;
  } else {
   w = c & MBFL_WCSGROUP_MASK;
   w |= MBFL_WCSGROUP_THROUGH;
   CK((*filter->output_function)(w, filter->data));
  }
  break;

 case 1:
  filter->status = 0;
  c1 = filter->cache;

  if ( c1 >= 0x81 && c1 <= 0xa0){
   w = (c1 - 0x81)*190 + (c - 0x41);
   if (w >= 0 && w < uhc1_ucs_table_size) {
    flag = 1;
    w = uhc1_ucs_table[w];
   } else {
    w = 0;
   }
  } else if ( c1 >= 0xa1 && c1 <= 0xc6){
   w = (c1 - 0xa1)*190 + (c - 0x41);
   if (w >= 0 && w < uhc2_ucs_table_size) {
    flag = 2;
    w = uhc2_ucs_table[w];
   } else {
    w = 0;
   }
  } else if ( c1 >= 0xc7 && c1 <= 0xfe){
   w = (c1 - 0xc7)*94 + (c - 0xa1);
   if (w >= 0 && w < uhc3_ucs_table_size) {
    flag = 3;
    w = uhc3_ucs_table[w];
   } else {
    w = 0;
   }
  }
  if (flag > 0){
   if (w <= 0) {
    w = (c1 << 8) | c;
    w &= MBFL_WCSPLANE_MASK;
    w |= MBFL_WCSPLANE_UHC;
   }
   CK((*filter->output_function)(w, filter->data));
  } else {
   if ((c >= 0 && c < 0x21) || c == 0x7f) {
    CK((*filter->output_function)(c, filter->data));
   } else {
    w = (c1 << 8) | c;
    w &= MBFL_WCSGROUP_MASK;
    w |= MBFL_WCSGROUP_THROUGH;
    CK((*filter->output_function)(w, filter->data));
   }
  }
  break;

 default:
  filter->status = 0;
  break;
 }

 return c;
}
