
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int lb; char* p; } ;


 int eq_s_b (struct SN_env*,int,int ) ;
 int g_vowel ;
 int g_vowel1 ;
 int g_vowel2 ;
 int g_vowel3 ;
 int g_vowel4 ;
 int g_vowel5 ;
 int g_vowel6 ;
 scalar_t__ out_grouping_b_U (struct SN_env*,int ,int,int,int) ;
 int s_0 ;
 int s_1 ;
 int s_2 ;

__attribute__((used)) static int r_check_vowel_harmony(struct SN_env * z) {
    { int m_test1 = z->l - z->c;
        if (out_grouping_b_U(z, g_vowel, 97, 305, 1) < 0) return 0;
        { int m2 = z->l - z->c; (void)m2;
            if (z->c <= z->lb || z->p[z->c - 1] != 'a') goto lab1;
            z->c--;
            if (out_grouping_b_U(z, g_vowel1, 97, 305, 1) < 0) goto lab1;
            goto lab0;
        lab1:
            z->c = z->l - m2;
            if (z->c <= z->lb || z->p[z->c - 1] != 'e') goto lab2;
            z->c--;
            if (out_grouping_b_U(z, g_vowel2, 101, 252, 1) < 0) goto lab2;
            goto lab0;
        lab2:
            z->c = z->l - m2;
            if (!(eq_s_b(z, 2, s_0))) goto lab3;
            if (out_grouping_b_U(z, g_vowel3, 97, 305, 1) < 0) goto lab3;
            goto lab0;
        lab3:
            z->c = z->l - m2;
            if (z->c <= z->lb || z->p[z->c - 1] != 'i') goto lab4;
            z->c--;
            if (out_grouping_b_U(z, g_vowel4, 101, 105, 1) < 0) goto lab4;
            goto lab0;
        lab4:
            z->c = z->l - m2;
            if (z->c <= z->lb || z->p[z->c - 1] != 'o') goto lab5;
            z->c--;
            if (out_grouping_b_U(z, g_vowel5, 111, 117, 1) < 0) goto lab5;
            goto lab0;
        lab5:
            z->c = z->l - m2;
            if (!(eq_s_b(z, 2, s_1))) goto lab6;
            if (out_grouping_b_U(z, g_vowel6, 246, 252, 1) < 0) goto lab6;
            goto lab0;
        lab6:
            z->c = z->l - m2;
            if (z->c <= z->lb || z->p[z->c - 1] != 'u') goto lab7;
            z->c--;
            if (out_grouping_b_U(z, g_vowel5, 111, 117, 1) < 0) goto lab7;
            goto lab0;
        lab7:
            z->c = z->l - m2;
            if (!(eq_s_b(z, 2, s_2))) return 0;
            if (out_grouping_b_U(z, g_vowel6, 246, 252, 1) < 0) return 0;
        }
    lab0:
        z->c = z->l - m_test1;
    }
    return 1;
}
