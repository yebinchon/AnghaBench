
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int ket; int bra; int lb; char* p; } ;


 int g_AEIO ;
 int g_CG ;
 scalar_t__ in_grouping_b_U (struct SN_env*,int ,int,int,int ) ;
 int r_RV (struct SN_env*) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_vowel_suffix(struct SN_env * z) {
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (in_grouping_b_U(z, g_AEIO, 97, 242, 0)) { z->c = z->l - m1; goto lab0; }
        z->bra = z->c;
        { int ret = r_RV(z);
            if (ret == 0) { z->c = z->l - m1; goto lab0; }
            if (ret < 0) return ret;
        }
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
        z->ket = z->c;
        if (z->c <= z->lb || z->p[z->c - 1] != 'i') { z->c = z->l - m1; goto lab0; }
        z->c--;
        z->bra = z->c;
        { int ret = r_RV(z);
            if (ret == 0) { z->c = z->l - m1; goto lab0; }
            if (ret < 0) return ret;
        }
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
    lab0:
        ;
    }
    { int m2 = z->l - z->c; (void)m2;
        z->ket = z->c;
        if (z->c <= z->lb || z->p[z->c - 1] != 'h') { z->c = z->l - m2; goto lab1; }
        z->c--;
        z->bra = z->c;
        if (in_grouping_b_U(z, g_CG, 99, 103, 0)) { z->c = z->l - m2; goto lab1; }
        { int ret = r_RV(z);
            if (ret == 0) { z->c = z->l - m2; goto lab1; }
            if (ret < 0) return ret;
        }
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
    lab1:
        ;
    }
    return 1;
}
