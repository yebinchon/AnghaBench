
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int lb; int* p; } ;


 int a_4 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_check_vowel_harmony (struct SN_env*) ;
 int r_mark_suffix_with_optional_y_consonant (struct SN_env*) ;

__attribute__((used)) static int r_mark_yA(struct SN_env * z) {
    { int ret = r_check_vowel_harmony(z);
        if (ret <= 0) return ret;
    }
    if (z->c <= z->lb || (z->p[z->c - 1] != 97 && z->p[z->c - 1] != 101)) return 0;
    if (!(find_among_b(z, a_4, 2))) return 0;
    { int ret = r_mark_suffix_with_optional_y_consonant(z);
        if (ret <= 0) return ret;
    }
    return 1;
}
