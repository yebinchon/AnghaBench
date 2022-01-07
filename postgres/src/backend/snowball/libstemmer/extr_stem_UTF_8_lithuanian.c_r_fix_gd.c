
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; } ;


 int a_4 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int s_10 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_fix_gd(struct SN_env * z) {
    z->ket = z->c;
    if (z->c - 1 <= z->lb || z->p[z->c - 1] != 100) return 0;
    if (!(find_among_b(z, a_4, 1))) return 0;
    z->bra = z->c;
    { int ret = slice_from_s(z, 1, s_10);
        if (ret < 0) return ret;
    }
    return 1;
}
