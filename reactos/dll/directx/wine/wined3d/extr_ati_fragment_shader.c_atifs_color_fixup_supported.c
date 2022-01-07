
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color_fixup_desc {int dummy; } ;
typedef int BOOL ;


 int color_fixup_rg ;
 int color_fixup_rgba ;
 int color_fixup_rgl ;
 scalar_t__ is_identity_fixup (struct color_fixup_desc) ;
 scalar_t__ is_same_fixup (struct color_fixup_desc,int ) ;

__attribute__((used)) static BOOL atifs_color_fixup_supported(struct color_fixup_desc fixup)
{

    return is_identity_fixup(fixup) || is_same_fixup(fixup, color_fixup_rg)
            || is_same_fixup(fixup, color_fixup_rgl) || is_same_fixup(fixup, color_fixup_rgba);
}
