
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* I; int l; int c; char* p; int lb; } ;


 int g_v ;
 int in_grouping_U (struct SN_env*,int ,int,int,int) ;
 int len_utf8 (char*) ;
 int out_grouping_U (struct SN_env*,int ,int,int,int) ;
 int r_fix_chdz (struct SN_env*) ;
 int r_fix_conflicts (struct SN_env*) ;
 int r_fix_gd (struct SN_env*) ;
 int r_step1 (struct SN_env*) ;
 int r_step2 (struct SN_env*) ;
 int skip_utf8 (char*,int,int ,int,int) ;

extern int lithuanian_UTF_8_stem(struct SN_env * z) {
    z->I[0] = z->l;
    { int c1 = z->c;
        { int c2 = z->c;
            { int c_test3 = z->c;
                if (z->c == z->l || z->p[z->c] != 'a') { z->c = c2; goto lab1; }
                z->c++;
                z->c = c_test3;
            }
            if (!(len_utf8(z->p) > 6)) { z->c = c2; goto lab1; }
            { int ret = skip_utf8(z->p, z->c, 0, z->l, + 1);
                if (ret < 0) { z->c = c2; goto lab1; }
                z->c = ret;
            }
        lab1:
            ;
        }
        {
            int ret = out_grouping_U(z, g_v, 97, 371, 1);
            if (ret < 0) goto lab0;
            z->c += ret;
        }
        {
            int ret = in_grouping_U(z, g_v, 97, 371, 1);
            if (ret < 0) goto lab0;
            z->c += ret;
        }
        z->I[0] = z->c;
    lab0:
        z->c = c1;
    }
    z->lb = z->c; z->c = z->l;

    { int m4 = z->l - z->c; (void)m4;
        { int ret = r_fix_conflicts(z);
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m4;
    }
    { int m5 = z->l - z->c; (void)m5;
        { int ret = r_step1(z);
            if (ret == 0) goto lab3;
            if (ret < 0) return ret;
        }
    lab3:
        z->c = z->l - m5;
    }
    { int m6 = z->l - z->c; (void)m6;
        { int ret = r_fix_chdz(z);
            if (ret == 0) goto lab4;
            if (ret < 0) return ret;
        }
    lab4:
        z->c = z->l - m6;
    }
    { int m7 = z->l - z->c; (void)m7;
        { int ret = r_step2(z);
            if (ret == 0) goto lab5;
            if (ret < 0) return ret;
        }
    lab5:
        z->c = z->l - m7;
    }
    { int m8 = z->l - z->c; (void)m8;
        { int ret = r_fix_chdz(z);
            if (ret == 0) goto lab6;
            if (ret < 0) return ret;
        }
    lab6:
        z->c = z->l - m8;
    }
    { int m9 = z->l - z->c; (void)m9;
        { int ret = r_fix_gd(z);
            if (ret == 0) goto lab7;
            if (ret < 0) return ret;
        }
    lab7:
        z->c = z->l - m9;
    }
    z->c = z->lb;
    return 1;
}
