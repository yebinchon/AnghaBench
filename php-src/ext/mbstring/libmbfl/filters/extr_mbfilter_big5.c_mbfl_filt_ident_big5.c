
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; int flag; TYPE_1__* encoding; } ;
typedef TYPE_2__ mbfl_identify_filter ;
struct TYPE_4__ {scalar_t__ no_encoding; } ;


 scalar_t__ mbfl_no_encoding_cp950 ;

__attribute__((used)) static int mbfl_filt_ident_big5(int c, mbfl_identify_filter *filter)
{
 int c1;
 if (filter->encoding->no_encoding == mbfl_no_encoding_cp950) {
  c1 = 0x80;
 } else {
  c1 = 0xa0;
 }

 if (filter->status) {
  if (c < 0x40 || (c > 0x7e && c < 0xa1) ||c > 0xfe) {
      filter->flag = 1;
  }
  filter->status = 0;
 } else if (c >= 0 && c < 0x80) {
  ;
 } else if (c > c1 && c < 0xff) {
  filter->status = 1;
 } else {
  filter->flag = 1;
 }

 return c;
}
