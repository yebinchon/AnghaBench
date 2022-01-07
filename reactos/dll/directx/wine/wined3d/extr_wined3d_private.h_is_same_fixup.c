
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color_fixup_desc {scalar_t__ x_sign_fixup; scalar_t__ x_source; scalar_t__ y_sign_fixup; scalar_t__ y_source; scalar_t__ z_sign_fixup; scalar_t__ z_source; scalar_t__ w_sign_fixup; scalar_t__ w_source; } ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_same_fixup(struct color_fixup_desc f1, struct color_fixup_desc f2)
{
    return f1.x_sign_fixup == f2.x_sign_fixup && f1.x_source == f2.x_source
            && f1.y_sign_fixup == f2.y_sign_fixup && f1.y_source == f2.y_source
            && f1.z_sign_fixup == f2.z_sign_fixup && f1.z_source == f2.z_source
            && f1.w_sign_fixup == f2.w_sign_fixup && f1.w_source == f2.w_source;
}
