
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int bra; int l; int lb; unsigned char* p; } ;


 int a_8 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_RV (struct SN_env*) ;
 int s_10 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_residual_form(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    among_var = find_among_b(z, a_8, 4);
    if (!(among_var)) return 0;
    z->bra = z->c;
    switch (among_var) {
        case 1:
            { int ret = r_RV(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            z->ket = z->c;
            { int m1 = z->l - z->c; (void)m1;
                if (z->c <= z->lb || z->p[z->c - 1] != 'u') goto lab1;
                z->c--;
                z->bra = z->c;
                { int m_test2 = z->l - z->c;
                    if (z->c <= z->lb || z->p[z->c - 1] != 'g') goto lab1;
                    z->c--;
                    z->c = z->l - m_test2;
                }
                goto lab0;
            lab1:
                z->c = z->l - m1;
                if (z->c <= z->lb || z->p[z->c - 1] != 'i') return 0;
                z->c--;
                z->bra = z->c;
                { int m_test3 = z->l - z->c;
                    if (z->c <= z->lb || z->p[z->c - 1] != 'c') return 0;
                    z->c--;
                    z->c = z->l - m_test3;
                }
            }
        lab0:
            { int ret = r_RV(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int ret = slice_from_s(z, 1, s_10);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
