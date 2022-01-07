
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int lb; int l; scalar_t__* B; } ;


 int r_case_ending (struct SN_env*) ;
 int r_i_plural (struct SN_env*) ;
 int r_mark_regions (struct SN_env*) ;
 int r_other_endings (struct SN_env*) ;
 int r_particle_etc (struct SN_env*) ;
 int r_possessive (struct SN_env*) ;
 int r_t_plural (struct SN_env*) ;
 int r_tidy (struct SN_env*) ;

extern int finnish_UTF_8_stem(struct SN_env * z) {
    { int c1 = z->c;
        { int ret = r_mark_regions(z);
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = c1;
    }
    z->B[0] = 0;
    z->lb = z->c; z->c = z->l;

    { int m2 = z->l - z->c; (void)m2;
        { int ret = r_particle_etc(z);
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
    lab1:
        z->c = z->l - m2;
    }
    { int m3 = z->l - z->c; (void)m3;
        { int ret = r_possessive(z);
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m3;
    }
    { int m4 = z->l - z->c; (void)m4;
        { int ret = r_case_ending(z);
            if (ret == 0) goto lab3;
            if (ret < 0) return ret;
        }
    lab3:
        z->c = z->l - m4;
    }
    { int m5 = z->l - z->c; (void)m5;
        { int ret = r_other_endings(z);
            if (ret == 0) goto lab4;
            if (ret < 0) return ret;
        }
    lab4:
        z->c = z->l - m5;
    }

    if (!(z->B[0])) goto lab6;
    { int m6 = z->l - z->c; (void)m6;
        { int ret = r_i_plural(z);
            if (ret == 0) goto lab7;
            if (ret < 0) return ret;
        }
    lab7:
        z->c = z->l - m6;
    }
    goto lab5;
lab6:
    { int m7 = z->l - z->c; (void)m7;
        { int ret = r_t_plural(z);
            if (ret == 0) goto lab8;
            if (ret < 0) return ret;
        }
    lab8:
        z->c = z->l - m7;
    }
lab5:
    { int m8 = z->l - z->c; (void)m8;
        { int ret = r_tidy(z);
            if (ret == 0) goto lab9;
            if (ret < 0) return ret;
        }
    lab9:
        z->c = z->l - m8;
    }
    z->c = z->lb;
    return 1;
}
