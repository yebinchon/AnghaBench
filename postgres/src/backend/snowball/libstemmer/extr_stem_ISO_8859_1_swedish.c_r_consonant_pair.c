
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int* I; int lb; int l; int* p; size_t ket; size_t bra; } ;


 int a_1 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_consonant_pair(struct SN_env * z) {

    { int mlimit1;
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        { int m2 = z->l - z->c; (void)m2;
            if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((1064976 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->lb = mlimit1; return 0; }
            if (!(find_among_b(z, a_1, 7))) { z->lb = mlimit1; return 0; }
            z->c = z->l - m2;
            z->ket = z->c;
            if (z->c <= z->lb) { z->lb = mlimit1; return 0; }
            z->c--;
            z->bra = z->c;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
        }
        z->lb = mlimit1;
    }
    return 1;
}
