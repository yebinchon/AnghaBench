
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IMGFMT_IS_RGB (int) ;
 scalar_t__ IMGFMT_IS_Y (int) ;
 int IMGFMT_RGB_DEPTH (int) ;
 int IMGFMT_Y_DEPTH (int) ;
 int assert (int) ;

__attribute__((used)) static int imgfmt_any_rnd_depth(int fmt)
{
    if (IMGFMT_IS_RGB(fmt))
        return IMGFMT_RGB_DEPTH(fmt);
    if (IMGFMT_IS_Y(fmt))
        return IMGFMT_Y_DEPTH(fmt);
    assert(0);
    return 0;
}
