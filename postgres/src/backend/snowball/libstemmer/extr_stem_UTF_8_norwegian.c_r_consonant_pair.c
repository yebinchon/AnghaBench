
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; scalar_t__* I; int lb; scalar_t__ ket; int* p; size_t bra; } ;


 int a_1 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int skip_utf8 (int*,size_t,int,int ,int) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_consonant_pair(struct SN_env * z) {
    { int m_test1 = z->l - z->c;

        { int mlimit2;
            if (z->c < z->I[0]) return 0;
            mlimit2 = z->lb; z->lb = z->I[0];
            z->ket = z->c;
            if (z->c - 1 <= z->lb || z->p[z->c - 1] != 116) { z->lb = mlimit2; return 0; }
            if (!(find_among_b(z, a_1, 2))) { z->lb = mlimit2; return 0; }
            z->bra = z->c;
            z->lb = mlimit2;
        }
        z->c = z->l - m_test1;
    }
    { int ret = skip_utf8(z->p, z->c, z->lb, 0, -1);
        if (ret < 0) return 0;
        z->c = ret;
    }
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
