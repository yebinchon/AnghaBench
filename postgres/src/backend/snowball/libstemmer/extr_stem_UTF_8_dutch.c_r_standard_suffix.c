
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int ket; int lb; int* p; size_t bra; int * B; } ;


 int a_3 ;
 int a_4 ;
 int a_5 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_v ;
 int g_v_I ;
 int g_v_j ;
 scalar_t__ out_grouping_b_U (struct SN_env*,int ,int,int,int ) ;
 int r_R1 (struct SN_env*) ;
 int r_R2 (struct SN_env*) ;
 int r_e_ending (struct SN_env*) ;
 int r_en_ending (struct SN_env*) ;
 int r_undouble (struct SN_env*) ;
 int s_11 ;
 int s_12 ;
 int s_13 ;
 int s_14 ;
 int skip_utf8 (int*,int,int,int ,int) ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_standard_suffix(struct SN_env * z) {
    int among_var;
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (z->c <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((540704 >> (z->p[z->c - 1] & 0x1f)) & 1)) goto lab0;
        among_var = find_among_b(z, a_3, 5);
        if (!(among_var)) goto lab0;
        z->bra = z->c;
        switch (among_var) {
            case 1:
                { int ret = r_R1(z);
                    if (ret == 0) goto lab0;
                    if (ret < 0) return ret;
                }
                { int ret = slice_from_s(z, 4, s_11);
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                { int ret = r_en_ending(z);
                    if (ret == 0) goto lab0;
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                { int ret = r_R1(z);
                    if (ret == 0) goto lab0;
                    if (ret < 0) return ret;
                }
                if (out_grouping_b_U(z, g_v_j, 97, 232, 0)) goto lab0;
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
        }
    lab0:
        z->c = z->l - m1;
    }
    { int m2 = z->l - z->c; (void)m2;
        { int ret = r_e_ending(z);
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
    lab1:
        z->c = z->l - m2;
    }
    { int m3 = z->l - z->c; (void)m3;
        z->ket = z->c;
        if (!(eq_s_b(z, 4, s_12))) goto lab2;
        z->bra = z->c;
        { int ret = r_R2(z);
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
        { int m4 = z->l - z->c; (void)m4;
            if (z->c <= z->lb || z->p[z->c - 1] != 'c') goto lab3;
            z->c--;
            goto lab2;
        lab3:
            z->c = z->l - m4;
        }
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
        z->ket = z->c;
        if (!(eq_s_b(z, 2, s_13))) goto lab2;
        z->bra = z->c;
        { int ret = r_en_ending(z);
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m3;
    }
    { int m5 = z->l - z->c; (void)m5;
        z->ket = z->c;
        if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((264336 >> (z->p[z->c - 1] & 0x1f)) & 1)) goto lab4;
        among_var = find_among_b(z, a_4, 6);
        if (!(among_var)) goto lab4;
        z->bra = z->c;
        switch (among_var) {
            case 1:
                { int ret = r_R2(z);
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                { int m6 = z->l - z->c; (void)m6;
                    z->ket = z->c;
                    if (!(eq_s_b(z, 2, s_14))) goto lab6;
                    z->bra = z->c;
                    { int ret = r_R2(z);
                        if (ret == 0) goto lab6;
                        if (ret < 0) return ret;
                    }
                    { int m7 = z->l - z->c; (void)m7;
                        if (z->c <= z->lb || z->p[z->c - 1] != 'e') goto lab7;
                        z->c--;
                        goto lab6;
                    lab7:
                        z->c = z->l - m7;
                    }
                    { int ret = slice_del(z);
                        if (ret < 0) return ret;
                    }
                    goto lab5;
                lab6:
                    z->c = z->l - m6;
                    { int ret = r_undouble(z);
                        if (ret == 0) goto lab4;
                        if (ret < 0) return ret;
                    }
                }
            lab5:
                break;
            case 2:
                { int ret = r_R2(z);
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
                { int m8 = z->l - z->c; (void)m8;
                    if (z->c <= z->lb || z->p[z->c - 1] != 'e') goto lab8;
                    z->c--;
                    goto lab4;
                lab8:
                    z->c = z->l - m8;
                }
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                { int ret = r_R2(z);
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                { int ret = r_e_ending(z);
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
                break;
            case 4:
                { int ret = r_R2(z);
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
            case 5:
                { int ret = r_R2(z);
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
                if (!(z->B[0])) goto lab4;
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
        }
    lab4:
        z->c = z->l - m5;
    }
    { int m9 = z->l - z->c; (void)m9;
        if (out_grouping_b_U(z, g_v_I, 73, 232, 0)) goto lab9;
        { int m_test10 = z->l - z->c;
            if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((2129954 >> (z->p[z->c - 1] & 0x1f)) & 1)) goto lab9;
            if (!(find_among_b(z, a_5, 4))) goto lab9;
            if (out_grouping_b_U(z, g_v, 97, 232, 0)) goto lab9;
            z->c = z->l - m_test10;
        }
        z->ket = z->c;
        { int ret = skip_utf8(z->p, z->c, z->lb, 0, -1);
            if (ret < 0) goto lab9;
            z->c = ret;
        }
        z->bra = z->c;
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
    lab9:
        z->c = z->l - m9;
    }
    return 1;
}
