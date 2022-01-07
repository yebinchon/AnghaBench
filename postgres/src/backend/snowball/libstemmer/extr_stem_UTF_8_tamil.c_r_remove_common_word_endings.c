
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* B; int lb; int c; int l; int ket; int bra; } ;


 int a_16 ;
 int a_17 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_fix_endings (struct SN_env*) ;
 int r_has_min_length (struct SN_env*) ;
 int s_56 ;
 int s_57 ;
 int s_58 ;
 int s_59 ;
 int s_60 ;
 int s_61 ;
 int s_62 ;
 int s_63 ;
 int s_64 ;
 int s_65 ;
 int s_66 ;
 int s_67 ;
 int s_68 ;
 int s_69 ;
 int s_70 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_remove_common_word_endings(struct SN_env * z) {
    z->B[0] = 0;
    { int ret = r_has_min_length(z);
        if (ret <= 0) return ret;
    }
    z->lb = z->c; z->c = z->l;

    { int m1 = z->l - z->c; (void)m1;
        { int m_test2 = z->l - z->c;
            z->ket = z->c;
            { int m3 = z->l - z->c; (void)m3;
                if (!(eq_s_b(z, 12, s_56))) goto lab3;
                goto lab2;
            lab3:
                z->c = z->l - m3;
                if (!(eq_s_b(z, 15, s_57))) goto lab4;
                goto lab2;
            lab4:
                z->c = z->l - m3;
                if (!(eq_s_b(z, 12, s_58))) goto lab5;
                goto lab2;
            lab5:
                z->c = z->l - m3;
                if (!(eq_s_b(z, 15, s_59))) goto lab6;
                goto lab2;
            lab6:
                z->c = z->l - m3;
                if (!(eq_s_b(z, 9, s_60))) goto lab7;
                goto lab2;
            lab7:
                z->c = z->l - m3;
                if (!(eq_s_b(z, 12, s_61))) goto lab8;
                goto lab2;
            lab8:
                z->c = z->l - m3;
                if (!(eq_s_b(z, 15, s_62))) goto lab9;
                goto lab2;
            lab9:
                z->c = z->l - m3;
                if (!(eq_s_b(z, 12, s_63))) goto lab10;
                goto lab2;
            lab10:
                z->c = z->l - m3;
                if (!(eq_s_b(z, 12, s_64))) goto lab11;
                goto lab2;
            lab11:
                z->c = z->l - m3;
                if (!(eq_s_b(z, 9, s_65))) goto lab12;
                goto lab2;
            lab12:
                z->c = z->l - m3;
                if (!(eq_s_b(z, 15, s_66))) goto lab13;
                goto lab2;
            lab13:
                z->c = z->l - m3;
                if (!(eq_s_b(z, 9, s_67))) goto lab14;
                { int m_test4 = z->l - z->c;
                    { int m5 = z->l - z->c; (void)m5;
                        if (!(find_among_b(z, a_16, 8))) goto lab15;
                        goto lab14;
                    lab15:
                        z->c = z->l - m5;
                    }
                    z->c = z->l - m_test4;
                }
                goto lab2;
            lab14:
                z->c = z->l - m3;
                if (!(eq_s_b(z, 6, s_68))) goto lab16;
                goto lab2;
            lab16:
                z->c = z->l - m3;
                if (!(eq_s_b(z, 9, s_69))) goto lab1;
            }
        lab2:
            z->bra = z->c;
            { int ret = slice_from_s(z, 3, s_70);
                if (ret < 0) return ret;
            }
            z->B[0] = 1;
            z->c = z->l - m_test2;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        { int m_test6 = z->l - z->c;
            z->ket = z->c;
            if (!(find_among_b(z, a_17, 13))) return 0;
            z->bra = z->c;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            z->B[0] = 1;
            z->c = z->l - m_test6;
        }
    }
lab0:
    z->c = z->lb;

    { int ret = r_fix_endings(z);
        if (ret == 0) goto lab17;
        if (ret < 0) return ret;
    }
lab17:
    return 1;
}
