
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ af_fmt_is_unsigned (int) ;
 int memset (void*,int,size_t) ;

void af_fill_silence(void *dst, size_t bytes, int format)
{
    memset(dst, af_fmt_is_unsigned(format) ? 0x80 : 0, bytes);
}
