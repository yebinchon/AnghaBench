
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpvs_fmt {int vs; scalar_t__ bits; } ;
typedef int VSPresetFormat ;


 scalar_t__ compare_fmt (int,struct mpvs_fmt const*) ;
 struct mpvs_fmt* mpvs_fmt_table ;
 int pfNone ;

__attribute__((used)) static VSPresetFormat mp_to_vs(int imgfmt)
{
    for (int n = 0; mpvs_fmt_table[n].bits; n++) {
        const struct mpvs_fmt *vsentry = &mpvs_fmt_table[n];
        if (compare_fmt(imgfmt, vsentry))
            return vsentry->vs;
    }
    return pfNone;
}
