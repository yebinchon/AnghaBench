
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int* I; int lb; int ket; int* p; int bra; } ;


 int a_2 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_other_suffix(struct SN_env * z) {

    { int mlimit1;
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c;
        if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((4718720 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->lb = mlimit1; return 0; }
        if (!(find_among_b(z, a_2, 11))) { z->lb = mlimit1; return 0; }
        z->bra = z->c;
        z->lb = mlimit1;
    }
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
