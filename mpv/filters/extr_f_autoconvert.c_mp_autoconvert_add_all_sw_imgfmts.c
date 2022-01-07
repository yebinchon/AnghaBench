
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_autoconvert {int dummy; } ;


 int IMGFMT_END ;
 int IMGFMT_IS_HWACCEL (int) ;
 int IMGFMT_START ;
 int mp_autoconvert_add_imgfmt (struct mp_autoconvert*,int,int ) ;

void mp_autoconvert_add_all_sw_imgfmts(struct mp_autoconvert *c)
{
    for (int n = IMGFMT_START; n < IMGFMT_END; n++) {
        if (!IMGFMT_IS_HWACCEL(n))
            mp_autoconvert_add_imgfmt(c, n, 0);
    }
}
