
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int bra; int l; int* p; int lb; } ;


 int a_2 ;
 int a_3 ;
 int a_4 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_v ;
 int in_grouping_b (struct SN_env*,int ,int,int,int ) ;
 int out_grouping_b (struct SN_env*,int ,int,int,int ) ;
 int r_R1 (struct SN_env*) ;
 int r_R2 (struct SN_env*) ;
 int r_RV (struct SN_env*) ;
 int s_12 ;
 int s_13 ;
 int s_14 ;
 int s_15 ;
 int s_16 ;
 int s_17 ;
 int s_18 ;
 int s_19 ;
 int s_20 ;
 int s_21 ;
 int s_22 ;
 int s_23 ;
 int s_24 ;
 int s_25 ;
 int s_26 ;
 int s_27 ;
 int s_28 ;
 int s_29 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_standard_suffix(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    among_var = find_among_b(z, a_4, 43);
    if (!(among_var)) return 0;
    z->bra = z->c;
    switch (among_var) {
        case 1:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            { int m1 = z->l - z->c; (void)m1;
                z->ket = z->c;
                if (!(eq_s_b(z, 2, s_12))) { z->c = z->l - m1; goto lab0; }
                z->bra = z->c;
                { int m2 = z->l - z->c; (void)m2;
                    { int ret = r_R2(z);
                        if (ret == 0) goto lab2;
                        if (ret < 0) return ret;
                    }
                    { int ret = slice_del(z);
                        if (ret < 0) return ret;
                    }
                    goto lab1;
                lab2:
                    z->c = z->l - m2;
                    { int ret = slice_from_s(z, 3, s_13);
                        if (ret < 0) return ret;
                    }
                }
            lab1:
            lab0:
                ;
            }
            break;
        case 3:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_from_s(z, 3, s_14);
                if (ret < 0) return ret;
            }
            break;
        case 4:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_from_s(z, 1, s_15);
                if (ret < 0) return ret;
            }
            break;
        case 5:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_from_s(z, 3, s_16);
                if (ret < 0) return ret;
            }
            break;
        case 6:
            { int ret = r_RV(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            { int m3 = z->l - z->c; (void)m3;
                z->ket = z->c;
                among_var = find_among_b(z, a_2, 6);
                if (!(among_var)) { z->c = z->l - m3; goto lab3; }
                z->bra = z->c;
                switch (among_var) {
                    case 1:
                        { int ret = r_R2(z);
                            if (ret == 0) { z->c = z->l - m3; goto lab3; }
                            if (ret < 0) return ret;
                        }
                        { int ret = slice_del(z);
                            if (ret < 0) return ret;
                        }
                        z->ket = z->c;
                        if (!(eq_s_b(z, 2, s_17))) { z->c = z->l - m3; goto lab3; }
                        z->bra = z->c;
                        { int ret = r_R2(z);
                            if (ret == 0) { z->c = z->l - m3; goto lab3; }
                            if (ret < 0) return ret;
                        }
                        { int ret = slice_del(z);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 2:
                        { int m4 = z->l - z->c; (void)m4;
                            { int ret = r_R2(z);
                                if (ret == 0) goto lab5;
                                if (ret < 0) return ret;
                            }
                            { int ret = slice_del(z);
                                if (ret < 0) return ret;
                            }
                            goto lab4;
                        lab5:
                            z->c = z->l - m4;
                            { int ret = r_R1(z);
                                if (ret == 0) { z->c = z->l - m3; goto lab3; }
                                if (ret < 0) return ret;
                            }
                            { int ret = slice_from_s(z, 3, s_18);
                                if (ret < 0) return ret;
                            }
                        }
                    lab4:
                        break;
                    case 3:
                        { int ret = r_R2(z);
                            if (ret == 0) { z->c = z->l - m3; goto lab3; }
                            if (ret < 0) return ret;
                        }
                        { int ret = slice_del(z);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 4:
                        { int ret = r_RV(z);
                            if (ret == 0) { z->c = z->l - m3; goto lab3; }
                            if (ret < 0) return ret;
                        }
                        { int ret = slice_from_s(z, 1, s_19);
                            if (ret < 0) return ret;
                        }
                        break;
                }
            lab3:
                ;
            }
            break;
        case 7:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            { int m5 = z->l - z->c; (void)m5;
                z->ket = z->c;
                if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((4198408 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->c = z->l - m5; goto lab6; }
                among_var = find_among_b(z, a_3, 3);
                if (!(among_var)) { z->c = z->l - m5; goto lab6; }
                z->bra = z->c;
                switch (among_var) {
                    case 1:
                        { int m6 = z->l - z->c; (void)m6;
                            { int ret = r_R2(z);
                                if (ret == 0) goto lab8;
                                if (ret < 0) return ret;
                            }
                            { int ret = slice_del(z);
                                if (ret < 0) return ret;
                            }
                            goto lab7;
                        lab8:
                            z->c = z->l - m6;
                            { int ret = slice_from_s(z, 3, s_20);
                                if (ret < 0) return ret;
                            }
                        }
                    lab7:
                        break;
                    case 2:
                        { int m7 = z->l - z->c; (void)m7;
                            { int ret = r_R2(z);
                                if (ret == 0) goto lab10;
                                if (ret < 0) return ret;
                            }
                            { int ret = slice_del(z);
                                if (ret < 0) return ret;
                            }
                            goto lab9;
                        lab10:
                            z->c = z->l - m7;
                            { int ret = slice_from_s(z, 3, s_21);
                                if (ret < 0) return ret;
                            }
                        }
                    lab9:
                        break;
                    case 3:
                        { int ret = r_R2(z);
                            if (ret == 0) { z->c = z->l - m5; goto lab6; }
                            if (ret < 0) return ret;
                        }
                        { int ret = slice_del(z);
                            if (ret < 0) return ret;
                        }
                        break;
                }
            lab6:
                ;
            }
            break;
        case 8:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            { int m8 = z->l - z->c; (void)m8;
                z->ket = z->c;
                if (!(eq_s_b(z, 2, s_22))) { z->c = z->l - m8; goto lab11; }
                z->bra = z->c;
                { int ret = r_R2(z);
                    if (ret == 0) { z->c = z->l - m8; goto lab11; }
                    if (ret < 0) return ret;
                }
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                z->ket = z->c;
                if (!(eq_s_b(z, 2, s_23))) { z->c = z->l - m8; goto lab11; }
                z->bra = z->c;
                { int m9 = z->l - z->c; (void)m9;
                    { int ret = r_R2(z);
                        if (ret == 0) goto lab13;
                        if (ret < 0) return ret;
                    }
                    { int ret = slice_del(z);
                        if (ret < 0) return ret;
                    }
                    goto lab12;
                lab13:
                    z->c = z->l - m9;
                    { int ret = slice_from_s(z, 3, s_24);
                        if (ret < 0) return ret;
                    }
                }
            lab12:
            lab11:
                ;
            }
            break;
        case 9:
            { int ret = slice_from_s(z, 3, s_25);
                if (ret < 0) return ret;
            }
            break;
        case 10:
            { int ret = r_R1(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_from_s(z, 2, s_26);
                if (ret < 0) return ret;
            }
            break;
        case 11:
            { int m10 = z->l - z->c; (void)m10;
                { int ret = r_R2(z);
                    if (ret == 0) goto lab15;
                    if (ret < 0) return ret;
                }
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                goto lab14;
            lab15:
                z->c = z->l - m10;
                { int ret = r_R1(z);
                    if (ret <= 0) return ret;
                }
                { int ret = slice_from_s(z, 3, s_27);
                    if (ret < 0) return ret;
                }
            }
        lab14:
            break;
        case 12:
            { int ret = r_R1(z);
                if (ret <= 0) return ret;
            }
            if (out_grouping_b(z, g_v, 97, 251, 0)) return 0;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 13:
            { int ret = r_RV(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_from_s(z, 3, s_28);
                if (ret < 0) return ret;
            }
            return 0;
            break;
        case 14:
            { int ret = r_RV(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_from_s(z, 3, s_29);
                if (ret < 0) return ret;
            }
            return 0;
            break;
        case 15:
            { int m_test11 = z->l - z->c;
                if (in_grouping_b(z, g_v, 97, 251, 0)) return 0;
                { int ret = r_RV(z);
                    if (ret <= 0) return ret;
                }
                z->c = z->l - m_test11;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            return 0;
            break;
    }
    return 1;
}
