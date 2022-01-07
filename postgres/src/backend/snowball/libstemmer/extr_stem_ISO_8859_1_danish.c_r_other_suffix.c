
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int ket; int bra; int* I; int lb; int* p; } ;


 int a_2 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_consonant_pair (struct SN_env*) ;
 int s_0 ;
 int s_1 ;
 int s_2 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_other_suffix(struct SN_env * z) {
    int among_var;
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (!(eq_s_b(z, 2, s_0))) goto lab0;
        z->bra = z->c;
        if (!(eq_s_b(z, 2, s_1))) goto lab0;
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
    lab0:
        z->c = z->l - m1;
    }

    { int mlimit2;
        if (z->c < z->I[0]) return 0;
        mlimit2 = z->lb; z->lb = z->I[0];
        z->ket = z->c;
        if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((1572992 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->lb = mlimit2; return 0; }
        among_var = find_among_b(z, a_2, 5);
        if (!(among_var)) { z->lb = mlimit2; return 0; }
        z->bra = z->c;
        z->lb = mlimit2;
    }
    switch (among_var) {
        case 1:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            { int m3 = z->l - z->c; (void)m3;
                { int ret = r_consonant_pair(z);
                    if (ret == 0) goto lab1;
                    if (ret < 0) return ret;
                }
            lab1:
                z->c = z->l - m3;
            }
            break;
        case 2:
            { int ret = slice_from_s(z, 3, s_2);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
