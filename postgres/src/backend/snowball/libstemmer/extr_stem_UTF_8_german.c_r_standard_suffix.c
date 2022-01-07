
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int ket; int lb; int* p; size_t bra; } ;


 int a_1 ;
 int a_2 ;
 int a_3 ;
 int a_4 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_s_ending ;
 int g_st_ending ;
 int in_grouping_b_U (struct SN_env*,int ,int,int,int ) ;
 int r_R1 (struct SN_env*) ;
 int r_R2 (struct SN_env*) ;
 int s_10 ;
 int s_11 ;
 int s_8 ;
 int s_9 ;
 int skip_utf8 (int*,size_t,int,int,int) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_standard_suffix(struct SN_env * z) {
    int among_var;
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (z->c <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((811040 >> (z->p[z->c - 1] & 0x1f)) & 1)) goto lab0;
        among_var = find_among_b(z, a_1, 7);
        if (!(among_var)) goto lab0;
        z->bra = z->c;
        { int ret = r_R1(z);
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
        switch (among_var) {
            case 1:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                { int m2 = z->l - z->c; (void)m2;
                    z->ket = z->c;
                    if (z->c <= z->lb || z->p[z->c - 1] != 's') { z->c = z->l - m2; goto lab1; }
                    z->c--;
                    z->bra = z->c;
                    if (!(eq_s_b(z, 3, s_8))) { z->c = z->l - m2; goto lab1; }
                    { int ret = slice_del(z);
                        if (ret < 0) return ret;
                    }
                lab1:
                    ;
                }
                break;
            case 3:
                if (in_grouping_b_U(z, g_s_ending, 98, 116, 0)) goto lab0;
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
        }
    lab0:
        z->c = z->l - m1;
    }
    { int m3 = z->l - z->c; (void)m3;
        z->ket = z->c;
        if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((1327104 >> (z->p[z->c - 1] & 0x1f)) & 1)) goto lab2;
        among_var = find_among_b(z, a_2, 4);
        if (!(among_var)) goto lab2;
        z->bra = z->c;
        { int ret = r_R1(z);
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
        switch (among_var) {
            case 1:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                if (in_grouping_b_U(z, g_st_ending, 98, 116, 0)) goto lab2;
                { int ret = skip_utf8(z->p, z->c, z->lb, z->l, - 3);
                    if (ret < 0) goto lab2;
                    z->c = ret;
                }
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
        }
    lab2:
        z->c = z->l - m3;
    }
    { int m4 = z->l - z->c; (void)m4;
        z->ket = z->c;
        if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((1051024 >> (z->p[z->c - 1] & 0x1f)) & 1)) goto lab3;
        among_var = find_among_b(z, a_4, 8);
        if (!(among_var)) goto lab3;
        z->bra = z->c;
        { int ret = r_R2(z);
            if (ret == 0) goto lab3;
            if (ret < 0) return ret;
        }
        switch (among_var) {
            case 1:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                { int m5 = z->l - z->c; (void)m5;
                    z->ket = z->c;
                    if (!(eq_s_b(z, 2, s_9))) { z->c = z->l - m5; goto lab4; }
                    z->bra = z->c;
                    { int m6 = z->l - z->c; (void)m6;
                        if (z->c <= z->lb || z->p[z->c - 1] != 'e') goto lab5;
                        z->c--;
                        { z->c = z->l - m5; goto lab4; }
                    lab5:
                        z->c = z->l - m6;
                    }
                    { int ret = r_R2(z);
                        if (ret == 0) { z->c = z->l - m5; goto lab4; }
                        if (ret < 0) return ret;
                    }
                    { int ret = slice_del(z);
                        if (ret < 0) return ret;
                    }
                lab4:
                    ;
                }
                break;
            case 2:
                { int m7 = z->l - z->c; (void)m7;
                    if (z->c <= z->lb || z->p[z->c - 1] != 'e') goto lab6;
                    z->c--;
                    goto lab3;
                lab6:
                    z->c = z->l - m7;
                }
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                { int m8 = z->l - z->c; (void)m8;
                    z->ket = z->c;
                    { int m9 = z->l - z->c; (void)m9;
                        if (!(eq_s_b(z, 2, s_10))) goto lab9;
                        goto lab8;
                    lab9:
                        z->c = z->l - m9;
                        if (!(eq_s_b(z, 2, s_11))) { z->c = z->l - m8; goto lab7; }
                    }
                lab8:
                    z->bra = z->c;
                    { int ret = r_R1(z);
                        if (ret == 0) { z->c = z->l - m8; goto lab7; }
                        if (ret < 0) return ret;
                    }
                    { int ret = slice_del(z);
                        if (ret < 0) return ret;
                    }
                lab7:
                    ;
                }
                break;
            case 4:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                { int m10 = z->l - z->c; (void)m10;
                    z->ket = z->c;
                    if (z->c - 1 <= z->lb || (z->p[z->c - 1] != 103 && z->p[z->c - 1] != 104)) { z->c = z->l - m10; goto lab10; }
                    if (!(find_among_b(z, a_3, 2))) { z->c = z->l - m10; goto lab10; }
                    z->bra = z->c;
                    { int ret = r_R2(z);
                        if (ret == 0) { z->c = z->l - m10; goto lab10; }
                        if (ret < 0) return ret;
                    }
                    { int ret = slice_del(z);
                        if (ret < 0) return ret;
                    }
                lab10:
                    ;
                }
                break;
        }
    lab3:
        z->c = z->l - m4;
    }
    return 1;
}
