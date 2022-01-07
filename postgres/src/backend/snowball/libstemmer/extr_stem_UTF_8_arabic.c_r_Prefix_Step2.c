
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int l; int* p; int ket; } ;


 int a_5 ;
 int eq_s (struct SN_env*,int,int ) ;
 int find_among (struct SN_env*,int ,int) ;
 int len_utf8 (int*) ;
 int s_58 ;
 int s_59 ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_Prefix_Step2(struct SN_env * z) {
    { int c1 = z->c;
        if (!(eq_s(z, 4, s_58))) goto lab0;
        return 0;
    lab0:
        z->c = c1;
    }
    { int c2 = z->c;
        if (!(eq_s(z, 4, s_59))) goto lab1;
        return 0;
    lab1:
        z->c = c2;
    }
    z->bra = z->c;
    if (z->c + 1 >= z->l || (z->p[z->c + 1] != 129 && z->p[z->c + 1] != 136)) return 0;
    if (!(find_among(z, a_5, 2))) return 0;
    z->ket = z->c;
    if (!(len_utf8(z->p) > 3)) return 0;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
