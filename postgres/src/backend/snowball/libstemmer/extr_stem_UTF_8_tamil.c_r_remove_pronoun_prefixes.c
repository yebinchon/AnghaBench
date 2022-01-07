
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* B; int bra; int c; int l; int* p; int ket; } ;


 int a_11 ;
 int a_12 ;
 int eq_s (struct SN_env*,int,int ) ;
 int find_among (struct SN_env*,int ,int) ;
 int r_fix_va_start (struct SN_env*) ;
 int s_45 ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_remove_pronoun_prefixes(struct SN_env * z) {
    z->B[0] = 0;
    z->bra = z->c;
    if (z->c + 2 >= z->l || z->p[z->c + 2] >> 5 != 4 || !((672 >> (z->p[z->c + 2] & 0x1f)) & 1)) return 0;
    if (!(find_among(z, a_11, 3))) return 0;
    if (!(find_among(z, a_12, 10))) return 0;
    if (!(eq_s(z, 3, s_45))) return 0;
    z->ket = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    z->B[0] = 1;
    { int c1 = z->c;
        { int ret = r_fix_va_start(z);
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = c1;
    }
    return 1;
}
