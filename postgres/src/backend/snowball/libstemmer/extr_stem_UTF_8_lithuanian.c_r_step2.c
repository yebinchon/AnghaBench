
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; scalar_t__* I; int lb; scalar_t__ ket; scalar_t__ bra; } ;


 int a_1 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_step2(struct SN_env * z) {
    while(1) {
        int m1 = z->l - z->c; (void)m1;

        { int mlimit2;
            if (z->c < z->I[0]) goto lab0;
            mlimit2 = z->lb; z->lb = z->I[0];
            z->ket = z->c;
            if (!(find_among_b(z, a_1, 62))) { z->lb = mlimit2; goto lab0; }
            z->bra = z->c;
            z->lb = mlimit2;
        }
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
        continue;
    lab0:
        z->c = z->l - m1;
        break;
    }
    return 1;
}
