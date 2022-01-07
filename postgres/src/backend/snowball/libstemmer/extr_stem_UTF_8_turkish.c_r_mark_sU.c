
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int dummy; } ;


 int g_U ;
 scalar_t__ in_grouping_b_U (struct SN_env*,int ,int,int,int ) ;
 int r_check_vowel_harmony (struct SN_env*) ;
 int r_mark_suffix_with_optional_s_consonant (struct SN_env*) ;

__attribute__((used)) static int r_mark_sU(struct SN_env * z) {
    { int ret = r_check_vowel_harmony(z);
        if (ret <= 0) return ret;
    }
    if (in_grouping_b_U(z, g_U, 105, 305, 0)) return 0;
    { int ret = r_mark_suffix_with_optional_s_consonant(z);
        if (ret <= 0) return ret;
    }
    return 1;
}
