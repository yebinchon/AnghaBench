
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_convert_fmt {scalar_t__ src_fmt; int dst_bits; int pad_msb; } ;


 scalar_t__ AF_FORMAT_S32 ;
 int af_fmt_to_bytes (scalar_t__) ;

__attribute__((used)) static int get_conv_type(struct ao_convert_fmt *fmt)
{
    if (af_fmt_to_bytes(fmt->src_fmt) * 8 == fmt->dst_bits && !fmt->pad_msb)
        return 0;
    if (fmt->src_fmt == AF_FORMAT_S32 && fmt->dst_bits == 24 && !fmt->pad_msb)
        return 1;
    if (fmt->src_fmt == AF_FORMAT_S32 && fmt->dst_bits == 32 && fmt->pad_msb == 8)
        return 2;
    return -1;
}
