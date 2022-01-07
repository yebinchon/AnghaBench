
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {scalar_t__ c; scalar_t__* I; int lb; scalar_t__ ket; scalar_t__ bra; int l; } ;


 int a_7 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int s_3 ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_other_endings(struct SN_env * z) {
    int among_var;

    { int mlimit1;
        if (z->c < z->I[1]) return 0;
        mlimit1 = z->lb; z->lb = z->I[1];
        z->ket = z->c;
        among_var = find_among_b(z, a_7, 14);
        if (!(among_var)) { z->lb = mlimit1; return 0; }
        z->bra = z->c;
        z->lb = mlimit1;
    }
    switch (among_var) {
        case 1:
            { int m2 = z->l - z->c; (void)m2;
                if (!(eq_s_b(z, 2, s_3))) goto lab0;
                return 0;
            lab0:
                z->c = z->l - m2;
            }
            break;
    }
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
