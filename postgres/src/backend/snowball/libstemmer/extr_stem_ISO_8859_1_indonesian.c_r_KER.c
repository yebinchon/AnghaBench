
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int dummy; } ;


 int eq_s (struct SN_env*,int,int ) ;
 int g_vowel ;
 scalar_t__ out_grouping (struct SN_env*,int ,int,int,int ) ;
 int s_0 ;

__attribute__((used)) static int r_KER(struct SN_env * z) {
    if (out_grouping(z, g_vowel, 97, 117, 0)) return 0;
    if (!(eq_s(z, 2, s_0))) return 0;
    return 1;
}
