
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbfl_convert_filter ;


 int mbfl_filt_conv_common_ctor (int *) ;

void
mbfl_filt_tl_jisx0201_jisx0208_init(mbfl_convert_filter *filt)
{
 mbfl_filt_conv_common_ctor(filt);
}
