
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
 int MBFL_WCSPLANE_JIS0208 ;
 int MBFL_WCSPLANE_MASK ;
 int* cp932ext1_ucs_table ;
 int cp932ext1_ucs_table_max ;
 int cp932ext1_ucs_table_min ;
 int* cp932ext2_ucs_table ;
 int cp932ext2_ucs_table_max ;
 int cp932ext2_ucs_table_min ;
 int* jisx0208_ucs_table ;
 int jisx0208_ucs_table_size ;
 int stub1 (int,int ) ;
 int stub10 (int,int ) ;
 int stub11 (int,int ) ;
 int stub12 (int,int ) ;
 int stub13 (int,int ) ;
 int stub14 (int,int ) ;
 int stub15 (int,int ) ;
 int stub16 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;

int
mbfl_filt_conv_2022jpms_wchar(int c, mbfl_convert_filter *filter)
{
 int c1, s, w;

retry:
 switch (filter->status & 0xf) {





 case 0:
  if (c == 0x1b) {
   filter->status += 2;
  } else if (filter->status == 0x20 && c > 0x20 && c < 0x60) {
   CK((*filter->output_function)(0xff40 + c, filter->data));
  } else if ((filter->status == 0x80 || filter->status == 0xa0) && c > 0x20 && c < 0x80) {
   filter->cache = c;
   filter->status += 1;
  } else if (c >= 0 && c < 0x80) {
   CK((*filter->output_function)(c, filter->data));
  } else if (c > 0xa0 && c < 0xe0) {
   CK((*filter->output_function)(0xfec0 + c, filter->data));
  } else {
   w = c & MBFL_WCSGROUP_MASK;
   w |= MBFL_WCSGROUP_THROUGH;
   CK((*filter->output_function)(w, filter->data));
  }
  break;



 case 1:
  w = 0;
  filter->status &= ~0xf;
  c1 = filter->cache;
  if (c > 0x20 && c < 0x7f) {
   s = (c1 - 0x21)*94 + c - 0x21;
   if (filter->status == 0x80) {
    if (s <= 137) {
     if (s == 31) {
      w = 0xff3c;
     } else if (s == 32) {
      w = 0xff5e;
     } else if (s == 33) {
      w = 0x2225;
     } else if (s == 60) {
      w = 0xff0d;
     } else if (s == 80) {
      w = 0xffe0;
     } else if (s == 81) {
      w = 0xffe1;
     } else if (s == 137) {
      w = 0xffe2;
     }
    }
    if (w == 0) {
     if (s >= cp932ext1_ucs_table_min && s < cp932ext1_ucs_table_max) {
      w = cp932ext1_ucs_table[s - cp932ext1_ucs_table_min];
     } else if (s >= 0 && s < jisx0208_ucs_table_size) {
      w = jisx0208_ucs_table[s];
     } else if (s >= cp932ext2_ucs_table_min && s < cp932ext2_ucs_table_max) {
      w = cp932ext2_ucs_table[s - cp932ext2_ucs_table_min];
     } else {
      w = 0;
     }
    }
    if (w <= 0) {
     w = (c1 << 8) | c;
     w &= MBFL_WCSPLANE_MASK;
     w |= MBFL_WCSPLANE_JIS0208;
    }
    CK((*filter->output_function)(w, filter->data));
   } else {
    if (c1 > 0x20 && c1 < 0x35) {
     w = 0xe000 + (c1 - 0x21)*94 + c - 0x21;
    }
    if (w <= 0) {
     w = (((c1 - 0x21) + 0x7f) << 8) | c;
     w &= MBFL_WCSPLANE_MASK;
     w |= MBFL_WCSPLANE_JIS0208;
    }
    CK((*filter->output_function)(w, filter->data));
   }
  } else if (c == 0x1b) {
   filter->status += 2;
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
  } else if (c == 0x28) {
   filter->status += 3;
  } else {
   filter->status &= ~0xf;
   CK((*filter->output_function)(0x1b, filter->data));
   goto retry;
  }
  break;







 case 3:
  if (c == 0x40 || c == 0x42) {
   filter->status = 0x80;
  } else if (c == 0x28) {
   filter->status++;
  } else {
   filter->status &= ~0xf;
   CK((*filter->output_function)(0x1b, filter->data));
   CK((*filter->output_function)(0x24, filter->data));
   goto retry;
  }
  break;







 case 4:
  if (c == 0x40 || c == 0x42) {
   filter->status = 0x80;
  } else if (c == 0x3f) {
   filter->status = 0xa0;
  } else {
   filter->status &= ~0xf;
   CK((*filter->output_function)(0x1b, filter->data));
   CK((*filter->output_function)(0x24, filter->data));
   CK((*filter->output_function)(0x28, filter->data));
   goto retry;
  }
  break;







 case 5:
  if (c == 0x42) {
   filter->status = 0;
  } else if (c == 0x4a) {
   filter->status = 0;
  } else if (c == 0x49) {
   filter->status = 0x20;
  } else {
   filter->status &= ~0xf;
   CK((*filter->output_function)(0x1b, filter->data));
   CK((*filter->output_function)(0x28, filter->data));
   goto retry;
  }
  break;

 default:
  filter->status = 0;
  break;
 }

 return c;
}
