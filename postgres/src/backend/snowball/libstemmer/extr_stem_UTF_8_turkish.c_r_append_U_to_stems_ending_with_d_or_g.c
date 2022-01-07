
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int lb; char* p; } ;


 int eq_s_b (struct SN_env*,int,int ) ;
 int g_vowel ;
 int insert_s (struct SN_env*,int,int,int,int ) ;
 scalar_t__ out_grouping_b_U (struct SN_env*,int ,int,int,int) ;
 int s_10 ;
 int s_11 ;
 int s_12 ;
 int s_13 ;
 int s_14 ;
 int s_15 ;
 int s_9 ;

__attribute__((used)) static int r_append_U_to_stems_ending_with_d_or_g(struct SN_env * z) {
    { int m_test1 = z->l - z->c;
        { int m2 = z->l - z->c; (void)m2;
            if (z->c <= z->lb || z->p[z->c - 1] != 'd') goto lab1;
            z->c--;
            goto lab0;
        lab1:
            z->c = z->l - m2;
            if (z->c <= z->lb || z->p[z->c - 1] != 'g') return 0;
            z->c--;
        }
    lab0:
        z->c = z->l - m_test1;
    }
    { int m3 = z->l - z->c; (void)m3;
        { int m_test4 = z->l - z->c;
            if (out_grouping_b_U(z, g_vowel, 97, 305, 1) < 0) goto lab3;
            { int m5 = z->l - z->c; (void)m5;
                if (z->c <= z->lb || z->p[z->c - 1] != 'a') goto lab5;
                z->c--;
                goto lab4;
            lab5:
                z->c = z->l - m5;
                if (!(eq_s_b(z, 2, s_9))) goto lab3;
            }
        lab4:
            z->c = z->l - m_test4;
        }
        { int ret;
            { int saved_c = z->c;
                ret = insert_s(z, z->c, z->c, 2, s_10);
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab2;
    lab3:
        z->c = z->l - m3;
        { int m_test6 = z->l - z->c;
            if (out_grouping_b_U(z, g_vowel, 97, 305, 1) < 0) goto lab6;
            { int m7 = z->l - z->c; (void)m7;
                if (z->c <= z->lb || z->p[z->c - 1] != 'e') goto lab8;
                z->c--;
                goto lab7;
            lab8:
                z->c = z->l - m7;
                if (z->c <= z->lb || z->p[z->c - 1] != 'i') goto lab6;
                z->c--;
            }
        lab7:
            z->c = z->l - m_test6;
        }
        { int ret;
            { int saved_c = z->c;
                ret = insert_s(z, z->c, z->c, 1, s_11);
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab2;
    lab6:
        z->c = z->l - m3;
        { int m_test8 = z->l - z->c;
            if (out_grouping_b_U(z, g_vowel, 97, 305, 1) < 0) goto lab9;
            { int m9 = z->l - z->c; (void)m9;
                if (z->c <= z->lb || z->p[z->c - 1] != 'o') goto lab11;
                z->c--;
                goto lab10;
            lab11:
                z->c = z->l - m9;
                if (z->c <= z->lb || z->p[z->c - 1] != 'u') goto lab9;
                z->c--;
            }
        lab10:
            z->c = z->l - m_test8;
        }
        { int ret;
            { int saved_c = z->c;
                ret = insert_s(z, z->c, z->c, 1, s_12);
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab2;
    lab9:
        z->c = z->l - m3;
        { int m_test10 = z->l - z->c;
            if (out_grouping_b_U(z, g_vowel, 97, 305, 1) < 0) return 0;
            { int m11 = z->l - z->c; (void)m11;
                if (!(eq_s_b(z, 2, s_13))) goto lab13;
                goto lab12;
            lab13:
                z->c = z->l - m11;
                if (!(eq_s_b(z, 2, s_14))) return 0;
            }
        lab12:
            z->c = z->l - m_test10;
        }
        { int ret;
            { int saved_c = z->c;
                ret = insert_s(z, z->c, z->c, 2, s_15);
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
    }
lab2:
    return 1;
}
