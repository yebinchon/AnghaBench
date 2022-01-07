
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int ket; int lb; char* p; int bra; int* I; } ;


 int a_7 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_keep_with_s ;
 scalar_t__ out_grouping_b (struct SN_env*,int ,int,int,int ) ;
 int r_R2 (struct SN_env*) ;
 int s_30 ;
 int s_31 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_residual_suffix(struct SN_env * z) {
    int among_var;
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (z->c <= z->lb || z->p[z->c - 1] != 's') { z->c = z->l - m1; goto lab0; }
        z->c--;
        z->bra = z->c;
        { int m_test2 = z->l - z->c;
            { int m3 = z->l - z->c; (void)m3;
                if (!(eq_s_b(z, 2, s_30))) goto lab2;
                goto lab1;
            lab2:
                z->c = z->l - m3;
                if (out_grouping_b(z, g_keep_with_s, 97, 232, 0)) { z->c = z->l - m1; goto lab0; }
            }
        lab1:
            z->c = z->l - m_test2;
        }
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
    lab0:
        ;
    }

    { int mlimit4;
        if (z->c < z->I[0]) return 0;
        mlimit4 = z->lb; z->lb = z->I[0];
        z->ket = z->c;
        if (z->c <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((278560 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->lb = mlimit4; return 0; }
        among_var = find_among_b(z, a_7, 6);
        if (!(among_var)) { z->lb = mlimit4; return 0; }
        z->bra = z->c;
        switch (among_var) {
            case 1:
                { int ret = r_R2(z);
                    if (ret == 0) { z->lb = mlimit4; return 0; }
                    if (ret < 0) return ret;
                }
                { int m5 = z->l - z->c; (void)m5;
                    if (z->c <= z->lb || z->p[z->c - 1] != 's') goto lab4;
                    z->c--;
                    goto lab3;
                lab4:
                    z->c = z->l - m5;
                    if (z->c <= z->lb || z->p[z->c - 1] != 't') { z->lb = mlimit4; return 0; }
                    z->c--;
                }
            lab3:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                { int ret = slice_from_s(z, 1, s_31);
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
        }
        z->lb = mlimit4;
    }
    return 1;
}
