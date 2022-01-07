
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; } ;


 int a_11 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int len_utf8 (int*) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_Suffix_Noun_Step1b(struct SN_env * z) {
    z->ket = z->c;
    if (z->c - 1 <= z->lb || z->p[z->c - 1] != 134) return 0;
    if (!(find_among_b(z, a_11, 1))) return 0;
    z->bra = z->c;
    if (!(len_utf8(z->p) > 5)) return 0;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
