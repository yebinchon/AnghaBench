
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSGROUP_MASK ;
 int MBFL_WCSGROUP_THROUGH ;
 int MBFL_WCSPLANE_CP850 ;
 int MBFL_WCSPLANE_MASK ;
 int* cp850_ucs_table ;
 int cp850_ucs_table_min ;
 int stub1 (int,int ) ;

int
mbfl_filt_conv_cp850_wchar(int c, mbfl_convert_filter *filter)
{
 int s;

 if (c >= 0 && c < cp850_ucs_table_min) {
  s = c;
 } else if (c >= cp850_ucs_table_min && c < 0x100) {
  s = cp850_ucs_table[c - cp850_ucs_table_min];
  if (s <= 0) {
   s = c;
   s &= MBFL_WCSPLANE_MASK;
   s |= MBFL_WCSPLANE_CP850;
  }
 } else {
  s = c;
  s &= MBFL_WCSGROUP_MASK;
  s |= MBFL_WCSGROUP_THROUGH;
 }

 CK((*filter->output_function)(s, filter->data));

 return c;
}
