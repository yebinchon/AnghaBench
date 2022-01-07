
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; int cache; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int mbfl_filt_put_invalid_char (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;

int mbfl_filt_conv_utf8_wchar(int c, mbfl_convert_filter *filter)
{
 int s, c1;

retry:
 switch (filter->status & 0xff) {
 case 0x00:
  if (c < 0x80) {
   CK((*filter->output_function)(c, filter->data));
  } else if (c >= 0xc2 && c <= 0xdf) {
   filter->status = 0x10;
   filter->cache = c & 0x1f;
  } else if (c >= 0xe0 && c <= 0xef) {
   filter->status = 0x20;
   filter->cache = c & 0xf;
  } else if (c >= 0xf0 && c <= 0xf4) {
   filter->status = 0x30;
   filter->cache = c & 0x7;
  } else {
   CK(mbfl_filt_put_invalid_char(c, filter));
  }
  break;
 case 0x10:
 case 0x21:
 case 0x32:
  filter->status = 0;
  if (c >= 0x80 && c <= 0xbf) {
   s = (filter->cache<<6) | (c & 0x3f);
   filter->cache = 0;
   CK((*filter->output_function)(s, filter->data));
  } else {
   CK(mbfl_filt_put_invalid_char(filter->cache, filter));
   goto retry;
  }
  break;
 case 0x20:
  s = (filter->cache<<6) | (c & 0x3f);
  c1 = filter->cache & 0xf;

  if ((c >= 0x80 && c <= 0xbf) &&
   ((c1 == 0x0 && c >= 0xa0) ||
    (c1 == 0xd && c < 0xa0) ||
    (c1 > 0x0 && c1 != 0xd))) {
   filter->cache = s;
   filter->status++;
  } else {
   CK(mbfl_filt_put_invalid_char(filter->cache, filter));
   goto retry;
  }
  break;
 case 0x30:
  s = (filter->cache<<6) | (c & 0x3f);
  c1 = filter->cache & 0x7;

  if ((c >= 0x80 && c <= 0xbf) &&
   ((c1 == 0x0 && c >= 0x90) ||
    (c1 == 0x4 && c < 0x90) ||
    (c1 > 0x0 && c1 != 0x4))) {
   filter->cache = s;
   filter->status++;
  } else {
   CK(mbfl_filt_put_invalid_char(filter->cache, filter));
   goto retry;
  }
  break;
 case 0x31:
  if (c >= 0x80 && c <= 0xbf) {
   filter->cache = (filter->cache<<6) | (c & 0x3f);
   filter->status++;
  } else {
   CK(mbfl_filt_put_invalid_char(filter->cache, filter));
   goto retry;
  }
  break;
 default:
  filter->status = 0;
  break;
 }

 return c;
}
