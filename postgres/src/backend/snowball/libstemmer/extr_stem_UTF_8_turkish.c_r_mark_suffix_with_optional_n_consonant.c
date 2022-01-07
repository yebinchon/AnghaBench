
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int lb; char* p; } ;


 int g_vowel ;
 scalar_t__ in_grouping_b_U (struct SN_env*,int ,int,int,int ) ;
 int skip_utf8 (char*,int,int,int ,int) ;

__attribute__((used)) static int r_mark_suffix_with_optional_n_consonant(struct SN_env * z) {
    { int m1 = z->l - z->c; (void)m1;
        if (z->c <= z->lb || z->p[z->c - 1] != 'n') goto lab1;
        z->c--;
        { int m_test2 = z->l - z->c;
            if (in_grouping_b_U(z, g_vowel, 97, 305, 0)) goto lab1;
            z->c = z->l - m_test2;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        { int m3 = z->l - z->c; (void)m3;
            { int m_test4 = z->l - z->c;
                if (z->c <= z->lb || z->p[z->c - 1] != 'n') goto lab2;
                z->c--;
                z->c = z->l - m_test4;
            }
            return 0;
        lab2:
            z->c = z->l - m3;
        }
        { int m_test5 = z->l - z->c;
            { int ret = skip_utf8(z->p, z->c, z->lb, 0, -1);
                if (ret < 0) return 0;
                z->c = ret;
            }
            if (in_grouping_b_U(z, g_vowel, 97, 305, 0)) return 0;
            z->c = z->l - m_test5;
        }
    }
lab0:
    return 1;
}
