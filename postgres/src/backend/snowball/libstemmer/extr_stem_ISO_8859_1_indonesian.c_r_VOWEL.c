
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int dummy; } ;


 int g_vowel ;
 scalar_t__ in_grouping (struct SN_env*,int ,int,int,int ) ;

__attribute__((used)) static int r_VOWEL(struct SN_env * z) {
    if (in_grouping(z, g_vowel, 97, 117, 0)) return 0;
    return 1;
}
