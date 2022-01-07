
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int lb; int l; } ;


 int r_attached_pronoun (struct SN_env*) ;
 int r_mark_regions (struct SN_env*) ;
 int r_postlude (struct SN_env*) ;
 int r_prelude (struct SN_env*) ;
 int r_standard_suffix (struct SN_env*) ;
 int r_verb_suffix (struct SN_env*) ;
 int r_vowel_suffix (struct SN_env*) ;

extern int italian_UTF_8_stem(struct SN_env * z) {
    { int c1 = z->c;
        { int ret = r_prelude(z);
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = c1;
    }

    { int ret = r_mark_regions(z);
        if (ret == 0) goto lab1;
        if (ret < 0) return ret;
    }
lab1:
    z->lb = z->c; z->c = z->l;

    { int m2 = z->l - z->c; (void)m2;
        { int ret = r_attached_pronoun(z);
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m2;
    }
    { int m3 = z->l - z->c; (void)m3;
        { int m4 = z->l - z->c; (void)m4;
            { int ret = r_standard_suffix(z);
                if (ret == 0) goto lab5;
                if (ret < 0) return ret;
            }
            goto lab4;
        lab5:
            z->c = z->l - m4;
            { int ret = r_verb_suffix(z);
                if (ret == 0) goto lab3;
                if (ret < 0) return ret;
            }
        }
    lab4:
    lab3:
        z->c = z->l - m3;
    }
    { int m5 = z->l - z->c; (void)m5;
        { int ret = r_vowel_suffix(z);
            if (ret == 0) goto lab6;
            if (ret < 0) return ret;
        }
    lab6:
        z->c = z->l - m5;
    }
    z->c = z->lb;
    { int c6 = z->c;
        { int ret = r_postlude(z);
            if (ret == 0) goto lab7;
            if (ret < 0) return ret;
        }
    lab7:
        z->c = c6;
    }
    return 1;
}
