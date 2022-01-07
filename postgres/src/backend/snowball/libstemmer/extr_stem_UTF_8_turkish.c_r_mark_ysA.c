
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int lb; int* p; } ;


 int a_21 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_mark_suffix_with_optional_y_consonant (struct SN_env*) ;

__attribute__((used)) static int r_mark_ysA(struct SN_env * z) {
    if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((26658 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
    if (!(find_among_b(z, a_21, 8))) return 0;
    { int ret = r_mark_suffix_with_optional_y_consonant(z);
        if (ret <= 0) return ret;
    }
    return 1;
}
