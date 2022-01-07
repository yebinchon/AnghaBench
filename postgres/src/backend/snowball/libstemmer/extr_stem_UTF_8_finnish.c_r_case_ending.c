
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {scalar_t__ c; scalar_t__* I; int lb; scalar_t__ ket; scalar_t__ bra; char* p; int l; int* B; } ;


 int a_6 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_C ;
 int g_V1 ;
 int in_grouping_b_U (struct SN_env*,int ,int,int,int ) ;
 int r_LONG (struct SN_env*) ;
 int s_2 ;
 int s_3 ;
 int s_4 ;
 int skip_utf8 (char*,int,scalar_t__,int ,int) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_case_ending(struct SN_env * z) {
    int among_var;

    { int mlimit1;
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c;
        among_var = find_among_b(z, a_6, 30);
        if (!(among_var)) { z->lb = mlimit1; return 0; }
        z->bra = z->c;
        z->lb = mlimit1;
    }
    switch (among_var) {
        case 1:
            if (z->c <= z->lb || z->p[z->c - 1] != 'a') return 0;
            z->c--;
            break;
        case 2:
            if (z->c <= z->lb || z->p[z->c - 1] != 'e') return 0;
            z->c--;
            break;
        case 3:
            if (z->c <= z->lb || z->p[z->c - 1] != 'i') return 0;
            z->c--;
            break;
        case 4:
            if (z->c <= z->lb || z->p[z->c - 1] != 'o') return 0;
            z->c--;
            break;
        case 5:
            if (!(eq_s_b(z, 2, s_2))) return 0;
            break;
        case 6:
            if (!(eq_s_b(z, 2, s_3))) return 0;
            break;
        case 7:
            { int m2 = z->l - z->c; (void)m2;
                { int m3 = z->l - z->c; (void)m3;
                    { int m4 = z->l - z->c; (void)m4;
                        { int ret = r_LONG(z);
                            if (ret == 0) goto lab2;
                            if (ret < 0) return ret;
                        }
                        goto lab1;
                    lab2:
                        z->c = z->l - m4;
                        if (!(eq_s_b(z, 2, s_4))) { z->c = z->l - m2; goto lab0; }
                    }
                lab1:
                    z->c = z->l - m3;
                    { int ret = skip_utf8(z->p, z->c, z->lb, 0, -1);
                        if (ret < 0) { z->c = z->l - m2; goto lab0; }
                        z->c = ret;
                    }
                }
                z->bra = z->c;
            lab0:
                ;
            }
            break;
        case 8:
            if (in_grouping_b_U(z, g_V1, 97, 246, 0)) return 0;
            if (in_grouping_b_U(z, g_C, 98, 122, 0)) return 0;
            break;
    }
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    z->B[0] = 1;
    return 1;
}
