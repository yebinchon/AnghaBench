
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* B; int ket; int c; int lb; char* p; int bra; int l; } ;


 int g_v ;
 scalar_t__ out_grouping_b_U (struct SN_env*,int ,int,int,int ) ;
 int r_R1 (struct SN_env*) ;
 int r_undouble (struct SN_env*) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_e_ending(struct SN_env * z) {
    z->B[0] = 0;
    z->ket = z->c;
    if (z->c <= z->lb || z->p[z->c - 1] != 'e') return 0;
    z->c--;
    z->bra = z->c;
    { int ret = r_R1(z);
        if (ret <= 0) return ret;
    }
    { int m_test1 = z->l - z->c;
        if (out_grouping_b_U(z, g_v, 97, 232, 0)) return 0;
        z->c = z->l - m_test1;
    }
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    z->B[0] = 1;
    { int ret = r_undouble(z);
        if (ret <= 0) return ret;
    }
    return 1;
}
