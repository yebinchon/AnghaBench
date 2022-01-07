
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color_fixup_desc {scalar_t__ w_sign_fixup; int w_source; scalar_t__ z_sign_fixup; int z_source; scalar_t__ y_sign_fixup; int y_source; scalar_t__ x_sign_fixup; int x_source; } ;


 int TRACE (char*,int ,...) ;
 int debug_complex_fixup (int ) ;
 int debug_fixup_channel_source (int ) ;
 int get_complex_fixup (struct color_fixup_desc) ;
 scalar_t__ is_complex_fixup (struct color_fixup_desc) ;

void dump_color_fixup_desc(struct color_fixup_desc fixup)
{
    if (is_complex_fixup(fixup))
    {
        TRACE("\tComplex: %s\n", debug_complex_fixup(get_complex_fixup(fixup)));
        return;
    }

    TRACE("\tX: %s%s\n", debug_fixup_channel_source(fixup.x_source), fixup.x_sign_fixup ? ", SIGN_FIXUP" : "");
    TRACE("\tY: %s%s\n", debug_fixup_channel_source(fixup.y_source), fixup.y_sign_fixup ? ", SIGN_FIXUP" : "");
    TRACE("\tZ: %s%s\n", debug_fixup_channel_source(fixup.z_source), fixup.z_sign_fixup ? ", SIGN_FIXUP" : "");
    TRACE("\tW: %s%s\n", debug_fixup_channel_source(fixup.w_source), fixup.w_sign_fixup ? ", SIGN_FIXUP" : "");
}
