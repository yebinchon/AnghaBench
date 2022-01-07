
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int lb; int c; int l; } ;


 int r_attached_pronoun (struct SN_env*) ;
 int r_mark_regions (struct SN_env*) ;
 int r_postlude (struct SN_env*) ;
 int r_residual_suffix (struct SN_env*) ;
 int r_standard_suffix (struct SN_env*) ;
 int r_verb_suffix (struct SN_env*) ;
 int r_y_verb_suffix (struct SN_env*) ;

extern int spanish_UTF_8_stem(struct SN_env * z) {

    { int ret = r_mark_regions(z);
        if (ret == 0) goto lab0;
        if (ret < 0) return ret;
    }
lab0:
    z->lb = z->c; z->c = z->l;

    { int m1 = z->l - z->c; (void)m1;
        { int ret = r_attached_pronoun(z);
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
    lab1:
        z->c = z->l - m1;
    }
    { int m2 = z->l - z->c; (void)m2;
        { int m3 = z->l - z->c; (void)m3;
            { int ret = r_standard_suffix(z);
                if (ret == 0) goto lab4;
                if (ret < 0) return ret;
            }
            goto lab3;
        lab4:
            z->c = z->l - m3;
            { int ret = r_y_verb_suffix(z);
                if (ret == 0) goto lab5;
                if (ret < 0) return ret;
            }
            goto lab3;
        lab5:
            z->c = z->l - m3;
            { int ret = r_verb_suffix(z);
                if (ret == 0) goto lab2;
                if (ret < 0) return ret;
            }
        }
    lab3:
    lab2:
        z->c = z->l - m2;
    }
    { int m4 = z->l - z->c; (void)m4;
        { int ret = r_residual_suffix(z);
            if (ret == 0) goto lab6;
            if (ret < 0) return ret;
        }
    lab6:
        z->c = z->l - m4;
    }
    z->c = z->lb;
    { int c5 = z->c;
        { int ret = r_postlude(z);
            if (ret == 0) goto lab7;
            if (ret < 0) return ret;
        }
    lab7:
        z->c = c5;
    }
    return 1;
}
