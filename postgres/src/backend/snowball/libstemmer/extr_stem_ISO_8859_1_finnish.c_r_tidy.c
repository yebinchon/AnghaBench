
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int* I; int lb; int l; int ket; int bra; char* p; scalar_t__* S; } ;


 int eq_v_b (struct SN_env*,scalar_t__) ;
 int g_AEI ;
 int g_C ;
 int g_V1 ;
 scalar_t__ in_grouping_b (struct SN_env*,int ,int,int,int) ;
 int r_LONG (struct SN_env*) ;
 int slice_del (struct SN_env*) ;
 scalar_t__ slice_to (struct SN_env*,scalar_t__) ;

__attribute__((used)) static int r_tidy(struct SN_env * z) {

    { int mlimit1;
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        { int m2 = z->l - z->c; (void)m2;
            { int m3 = z->l - z->c; (void)m3;
                { int ret = r_LONG(z);
                    if (ret == 0) goto lab0;
                    if (ret < 0) return ret;
                }
                z->c = z->l - m3;
                z->ket = z->c;
                if (z->c <= z->lb) goto lab0;
                z->c--;
                z->bra = z->c;
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
            }
        lab0:
            z->c = z->l - m2;
        }
        { int m4 = z->l - z->c; (void)m4;
            z->ket = z->c;
            if (in_grouping_b(z, g_AEI, 97, 228, 0)) goto lab1;
            z->bra = z->c;
            if (in_grouping_b(z, g_C, 98, 122, 0)) goto lab1;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
        lab1:
            z->c = z->l - m4;
        }
        { int m5 = z->l - z->c; (void)m5;
            z->ket = z->c;
            if (z->c <= z->lb || z->p[z->c - 1] != 'j') goto lab2;
            z->c--;
            z->bra = z->c;
            { int m6 = z->l - z->c; (void)m6;
                if (z->c <= z->lb || z->p[z->c - 1] != 'o') goto lab4;
                z->c--;
                goto lab3;
            lab4:
                z->c = z->l - m6;
                if (z->c <= z->lb || z->p[z->c - 1] != 'u') goto lab2;
                z->c--;
            }
        lab3:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
        lab2:
            z->c = z->l - m5;
        }
        { int m7 = z->l - z->c; (void)m7;
            z->ket = z->c;
            if (z->c <= z->lb || z->p[z->c - 1] != 'o') goto lab5;
            z->c--;
            z->bra = z->c;
            if (z->c <= z->lb || z->p[z->c - 1] != 'j') goto lab5;
            z->c--;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
        lab5:
            z->c = z->l - m7;
        }
        z->lb = mlimit1;
    }
    if (in_grouping_b(z, g_V1, 97, 246, 1) < 0) return 0;
    z->ket = z->c;
    if (in_grouping_b(z, g_C, 98, 122, 0)) return 0;
    z->bra = z->c;
    z->S[0] = slice_to(z, z->S[0]);
    if (z->S[0] == 0) return -1;
    if (!(eq_v_b(z, z->S[0]))) return 0;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
