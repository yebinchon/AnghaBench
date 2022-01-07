
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int lb; int* p; size_t ket; size_t bra; } ;


 int a_2 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_undouble(struct SN_env * z) {
    { int m_test1 = z->l - z->c;
        if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((1050640 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
        if (!(find_among_b(z, a_2, 3))) return 0;
        z->c = z->l - m_test1;
    }
    z->ket = z->c;
    if (z->c <= z->lb) return 0;
    z->c--;
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
