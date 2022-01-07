
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* B; int lb; int c; int l; int ket; int bra; int p; } ;


 int a_18 ;
 int a_19 ;
 int a_20 ;
 int a_21 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int len_utf8 (int ) ;
 int r_fix_endings (struct SN_env*) ;
 int r_has_min_length (struct SN_env*) ;
 int s_100 ;
 int s_101 ;
 int s_102 ;
 int s_103 ;
 int s_71 ;
 int s_72 ;
 int s_73 ;
 int s_74 ;
 int s_75 ;
 int s_76 ;
 int s_77 ;
 int s_78 ;
 int s_79 ;
 int s_80 ;
 int s_81 ;
 int s_82 ;
 int s_83 ;
 int s_84 ;
 int s_85 ;
 int s_86 ;
 int s_87 ;
 int s_88 ;
 int s_89 ;
 int s_90 ;
 int s_91 ;
 int s_92 ;
 int s_93 ;
 int s_94 ;
 int s_95 ;
 int s_96 ;
 int s_97 ;
 int s_98 ;
 int s_99 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_remove_vetrumai_urupukal(struct SN_env * z) {
    z->B[0] = 0;
    z->B[1] = 0;
    { int ret = r_has_min_length(z);
        if (ret <= 0) return ret;
    }
    z->lb = z->c; z->c = z->l;

    { int m1 = z->l - z->c; (void)m1;
        { int m_test2 = z->l - z->c;
            z->ket = z->c;
            if (!(eq_s_b(z, 6, s_71))) goto lab1;
            z->bra = z->c;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            z->c = z->l - m_test2;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        { int m_test3 = z->l - z->c;
            z->ket = z->c;
            { int m4 = z->l - z->c; (void)m4;
                { int m5 = z->l - z->c; (void)m5;
                    if (!(eq_s_b(z, 9, s_72))) goto lab6;
                    goto lab5;
                lab6:
                    z->c = z->l - m5;
                    if (!(eq_s_b(z, 3, s_73))) goto lab4;
                }
            lab5:
                { int m_test6 = z->l - z->c;
                    { int m7 = z->l - z->c; (void)m7;
                        if (!(find_among_b(z, a_18, 6))) goto lab7;
                        goto lab4;
                    lab7:
                        z->c = z->l - m7;
                    }
                    z->c = z->l - m_test6;
                }
                goto lab3;
            lab4:
                z->c = z->l - m4;
                if (!(eq_s_b(z, 3, s_74))) goto lab2;
                { int m_test8 = z->l - z->c;
                    if (!(find_among_b(z, a_19, 6))) goto lab2;
                    if (!(eq_s_b(z, 3, s_75))) goto lab2;
                    z->c = z->l - m_test8;
                }
            }
        lab3:
            z->bra = z->c;
            { int ret = slice_from_s(z, 3, s_76);
                if (ret < 0) return ret;
            }
            z->c = z->l - m_test3;
        }
        goto lab0;
    lab2:
        z->c = z->l - m1;
        { int m_test9 = z->l - z->c;
            z->ket = z->c;
            { int m10 = z->l - z->c; (void)m10;
                if (!(eq_s_b(z, 9, s_77))) goto lab10;
                goto lab9;
            lab10:
                z->c = z->l - m10;
                if (!(eq_s_b(z, 9, s_78))) goto lab11;
                goto lab9;
            lab11:
                z->c = z->l - m10;
                if (!(eq_s_b(z, 9, s_79))) goto lab12;
                goto lab9;
            lab12:
                z->c = z->l - m10;
                if (!(eq_s_b(z, 9, s_80))) goto lab13;
                goto lab9;
            lab13:
                z->c = z->l - m10;
                if (!(eq_s_b(z, 9, s_81))) goto lab14;
                { int m_test11 = z->l - z->c;
                    { int m12 = z->l - z->c; (void)m12;
                        if (!(eq_s_b(z, 3, s_82))) goto lab15;
                        goto lab14;
                    lab15:
                        z->c = z->l - m12;
                    }
                    z->c = z->l - m_test11;
                }
                goto lab9;
            lab14:
                z->c = z->l - m10;
                if (!(eq_s_b(z, 15, s_83))) goto lab16;
                goto lab9;
            lab16:
                z->c = z->l - m10;
                if (!(eq_s_b(z, 21, s_84))) goto lab17;
                goto lab9;
            lab17:
                z->c = z->l - m10;
                if (!(eq_s_b(z, 9, s_85))) goto lab18;
                goto lab9;
            lab18:
                z->c = z->l - m10;
                if (!(len_utf8(z->p) >= 7)) goto lab19;
                if (!(eq_s_b(z, 12, s_86))) goto lab19;
                goto lab9;
            lab19:
                z->c = z->l - m10;
                if (!(eq_s_b(z, 9, s_87))) goto lab20;
                goto lab9;
            lab20:
                z->c = z->l - m10;
                if (!(eq_s_b(z, 9, s_88))) goto lab21;
                goto lab9;
            lab21:
                z->c = z->l - m10;
                if (!(eq_s_b(z, 12, s_89))) goto lab22;
                goto lab9;
            lab22:
                z->c = z->l - m10;
                if (!(eq_s_b(z, 6, s_90))) goto lab23;
                { int m_test13 = z->l - z->c;
                    { int m14 = z->l - z->c; (void)m14;
                        if (!(find_among_b(z, a_20, 8))) goto lab24;
                        goto lab23;
                    lab24:
                        z->c = z->l - m14;
                    }
                    z->c = z->l - m_test13;
                }
                goto lab9;
            lab23:
                z->c = z->l - m10;
                if (!(eq_s_b(z, 9, s_91))) goto lab8;
            }
        lab9:
            z->bra = z->c;
            { int ret = slice_from_s(z, 3, s_92);
                if (ret < 0) return ret;
            }
            z->c = z->l - m_test9;
        }
        goto lab0;
    lab8:
        z->c = z->l - m1;
        { int m_test15 = z->l - z->c;
            z->ket = z->c;
            { int m16 = z->l - z->c; (void)m16;
                if (!(eq_s_b(z, 9, s_93))) goto lab27;
                goto lab26;
            lab27:
                z->c = z->l - m16;
                if (!(eq_s_b(z, 12, s_94))) goto lab28;
                goto lab26;
            lab28:
                z->c = z->l - m16;
                if (!(eq_s_b(z, 12, s_95))) goto lab29;
                goto lab26;
            lab29:
                z->c = z->l - m16;
                if (!(eq_s_b(z, 12, s_96))) goto lab30;
                goto lab26;
            lab30:
                z->c = z->l - m16;
                if (!(eq_s_b(z, 12, s_97))) goto lab31;
                goto lab26;
            lab31:
                z->c = z->l - m16;
                if (!(eq_s_b(z, 12, s_98))) goto lab32;
                goto lab26;
            lab32:
                z->c = z->l - m16;
                if (!(eq_s_b(z, 6, s_99))) goto lab25;
                { int m_test17 = z->l - z->c;
                    { int m18 = z->l - z->c; (void)m18;
                        if (!(find_among_b(z, a_21, 8))) goto lab33;
                        goto lab25;
                    lab33:
                        z->c = z->l - m18;
                    }
                    z->c = z->l - m_test17;
                }
            }
        lab26:
            z->bra = z->c;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            z->c = z->l - m_test15;
        }
        goto lab0;
    lab25:
        z->c = z->l - m1;
        { int m_test19 = z->l - z->c;
            z->ket = z->c;
            if (!(eq_s_b(z, 3, s_100))) return 0;
            z->bra = z->c;
            { int ret = slice_from_s(z, 3, s_101);
                if (ret < 0) return ret;
            }
            z->c = z->l - m_test19;
        }
    }
lab0:
    z->B[0] = 1;
    z->B[1] = 1;
    { int m20 = z->l - z->c; (void)m20;
        z->ket = z->c;
        if (!(eq_s_b(z, 9, s_102))) goto lab34;
        z->bra = z->c;
        { int ret = slice_from_s(z, 3, s_103);
            if (ret < 0) return ret;
        }
    lab34:
        z->c = z->l - m20;
    }
    z->c = z->lb;

    { int ret = r_fix_endings(z);
        if (ret == 0) goto lab35;
        if (ret < 0) return ret;
    }
lab35:
    return 1;
}
