
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int dummy; } ;


 int eq_s_b (struct SN_env*,int,int ) ;
 int r_mark_suffix_with_optional_y_consonant (struct SN_env*) ;
 int s_4 ;

__attribute__((used)) static int r_mark_yken(struct SN_env * z) {
    if (!(eq_s_b(z, 3, s_4))) return 0;
    { int ret = r_mark_suffix_with_optional_y_consonant(z);
        if (ret <= 0) return ret;
    }
    return 1;
}
