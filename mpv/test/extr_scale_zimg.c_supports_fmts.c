
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ mp_zimg_supports_in_format (int) ;
 scalar_t__ mp_zimg_supports_out_format (int) ;

__attribute__((used)) static bool supports_fmts(void *pctx, int imgfmt_dst, int imgfmt_src)
{
    return mp_zimg_supports_in_format(imgfmt_src) &&
           mp_zimg_supports_out_format(imgfmt_dst);
}
