
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
 int MBFL_WCSPLANE_KSC5601 ;
 int MBFL_WCSPLANE_MASK ;
 int stub1 (int,int ) ;
 int stub10 (int,int ) ;
 int stub11 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;
 int* uhc2_ucs_table ;
 int uhc2_ucs_table_size ;
 int* uhc3_ucs_table ;
 int uhc3_ucs_table_size ;

int
mbfl_filt_conv_2022kr_wchar(int c, mbfl_convert_filter *filter)
{
 int c1, w, flag;

retry:
 switch (filter->status & 0xf) {


 case 0:
  if (c == 0x1b) {
   filter->status += 2;
  } else if (c == 0x0f) {
   filter->status &= ~0xff;
  } else if (c == 0x0e) {
   filter->status |= 0x10;
  } else if ((filter->status & 0x10) != 0 && c > 0x20 && c < 0x7f) {

   filter->cache = c;
   filter->status += 1;
  } else if ((filter->status & 0x10) == 0 && c >= 0 && c < 0x80) {

   CK((*filter->output_function)(c, filter->data));
  } else {
   w = c & MBFL_WCSGROUP_MASK;
   w |= MBFL_WCSGROUP_THROUGH;
   CK((*filter->output_function)(w, filter->data));
  }
  break;

 case 1:
  filter->status &= ~0xf;
  c1 = filter->cache;
  flag = 0;
  if (c1 > 0x20 && c1 < 0x47) {
   flag = 1;
  } else if (c1 >= 0x47 && c1 <= 0x7e && c1 != 0x49) {
   flag = 2;
  }
  if (flag > 0 && c > 0x20 && c < 0x7f) {
   if (flag == 1){
    w = (c1 - 0x21)*190 + (c - 0x41) + 0x80;
    if (w >= 0 && w < uhc2_ucs_table_size) {
     w = uhc2_ucs_table[w];
    } else {
     w = 0;
    }
   } else {
    w = (c1 - 0x47)*94 + (c - 0x21);
    if (w >= 0 && w < uhc3_ucs_table_size) {
     w = uhc3_ucs_table[w];
    } else {
     w = 0;
    }
   }

   if (w <= 0) {
    w = (c1 << 8) | c;
    w &= MBFL_WCSPLANE_MASK;
    w |= MBFL_WCSPLANE_KSC5601;
   }
   CK((*filter->output_function)(w, filter->data));
  } else if (c == 0x1b) {
   filter->status++;
  } else if ((c >= 0 && c < 0x21) || c == 0x7f) {
   CK((*filter->output_function)(c, filter->data));
  } else {
   w = (c1 << 8) | c;
   w &= MBFL_WCSGROUP_MASK;
   w |= MBFL_WCSGROUP_THROUGH;
   CK((*filter->output_function)(w, filter->data));
  }
  break;

 case 2:
  if (c == 0x24) {
   filter->status++;
  } else {
   filter->status &= ~0xf;
   CK((*filter->output_function)(0x1b, filter->data));
   goto retry;
  }
  break;
 case 3:
  if (c == 0x29) {
   filter->status++;
  } else {
   filter->status &= ~0xf;
   CK((*filter->output_function)(0x1b, filter->data));
   CK((*filter->output_function)(0x24, filter->data));
   goto retry;
  }
  break;
 case 4:
  if (c == 0x43) {
   filter->status &= ~0xf;
   filter->status |= 0x100;
  } else {
   filter->status &= ~0xf;
   CK((*filter->output_function)(0x1b, filter->data));
   CK((*filter->output_function)(0x24, filter->data));
   CK((*filter->output_function)(0x29, filter->data));
   goto retry;
  }
  break;
 default:
  filter->status = 0;
  break;
 }

 return c;
}
