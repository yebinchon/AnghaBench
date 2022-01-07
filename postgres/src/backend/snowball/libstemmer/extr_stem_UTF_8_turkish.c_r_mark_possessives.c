
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int lb; int* p; } ;


 int a_0 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_mark_suffix_with_optional_U_vowel (struct SN_env*) ;

__attribute__((used)) static int r_mark_possessives(struct SN_env * z) {
    if (z->c <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((67133440 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
    if (!(find_among_b(z, a_0, 10))) return 0;
    { int ret = r_mark_suffix_with_optional_U_vowel(z);
        if (ret <= 0) return ret;
    }
    return 1;
}
