
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpvs_fmt {scalar_t__ vs; scalar_t__ bits; } ;
typedef scalar_t__ VSPresetFormat ;


 int IMGFMT_END ;
 int IMGFMT_START ;
 scalar_t__ compare_fmt (int,struct mpvs_fmt const*) ;
 struct mpvs_fmt* mpvs_fmt_table ;

__attribute__((used)) static int mp_from_vs(VSPresetFormat vs)
{
    for (int n = 0; mpvs_fmt_table[n].bits; n++) {
        const struct mpvs_fmt *vsentry = &mpvs_fmt_table[n];
        if (vsentry->vs == vs) {
            for (int imgfmt = IMGFMT_START; imgfmt < IMGFMT_END; imgfmt++) {
                if (compare_fmt(imgfmt, vsentry))
                    return imgfmt;
            }
            break;
        }
    }
    return 0;
}
