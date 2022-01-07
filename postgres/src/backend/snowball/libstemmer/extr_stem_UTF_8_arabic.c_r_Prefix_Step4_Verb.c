
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int bra; int c; int l; int* p; int ket; int* B; } ;


 int a_9 ;
 int find_among (struct SN_env*,int ,int) ;
 int len_utf8 (int*) ;
 int s_67 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_Prefix_Step4_Verb(struct SN_env * z) {
    z->bra = z->c;
    if (z->c + 5 >= z->l || z->p[z->c + 5] != 170) return 0;
    if (!(find_among(z, a_9, 3))) return 0;
    z->ket = z->c;
    if (!(len_utf8(z->p) > 4)) return 0;
    z->B[1] = 1;
    z->B[0] = 0;
    { int ret = slice_from_s(z, 6, s_67);
        if (ret < 0) return ret;
    }
    return 1;
}
