
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int lb; int l; } ;


 int r_deriv (struct SN_env*) ;
 int r_initial_morph (struct SN_env*) ;
 int r_mark_regions (struct SN_env*) ;
 int r_noun_sfx (struct SN_env*) ;
 int r_verb_sfx (struct SN_env*) ;

extern int irish_UTF_8_stem(struct SN_env * z) {
    { int c1 = z->c;
        { int ret = r_initial_morph(z);
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
        { int ret = r_noun_sfx(z);
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m2;
    }
    { int m3 = z->l - z->c; (void)m3;
        { int ret = r_deriv(z);
            if (ret == 0) goto lab3;
            if (ret < 0) return ret;
        }
    lab3:
        z->c = z->l - m3;
    }
    { int m4 = z->l - z->c; (void)m4;
        { int ret = r_verb_sfx(z);
            if (ret == 0) goto lab4;
            if (ret < 0) return ret;
        }
    lab4:
        z->c = z->l - m4;
    }
    z->c = z->lb;
    return 1;
}
