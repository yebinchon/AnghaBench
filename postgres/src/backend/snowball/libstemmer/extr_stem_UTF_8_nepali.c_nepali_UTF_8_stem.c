
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int lb; int c; int l; } ;


 int r_check_category_2 (struct SN_env*) ;
 int r_remove_category_1 (struct SN_env*) ;
 int r_remove_category_2 (struct SN_env*) ;
 int r_remove_category_3 (struct SN_env*) ;

extern int nepali_UTF_8_stem(struct SN_env * z) {
    z->lb = z->c; z->c = z->l;

    { int m1 = z->l - z->c; (void)m1;
        { int ret = r_remove_category_1(z);
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = z->l - m1;
    }
    { int m2 = z->l - z->c; (void)m2;
        while(1) {
            int m3 = z->l - z->c; (void)m3;
            { int m4 = z->l - z->c; (void)m4;
                { int m5 = z->l - z->c; (void)m5;
                    { int ret = r_check_category_2(z);
                        if (ret == 0) goto lab3;
                        if (ret < 0) return ret;
                    }
                    z->c = z->l - m5;
                    { int ret = r_remove_category_2(z);
                        if (ret == 0) goto lab3;
                        if (ret < 0) return ret;
                    }
                }
            lab3:
                z->c = z->l - m4;
            }
            { int ret = r_remove_category_3(z);
                if (ret == 0) goto lab2;
                if (ret < 0) return ret;
            }
            continue;
        lab2:
            z->c = z->l - m3;
            break;
        }
        z->c = z->l - m2;
    }
    z->c = z->lb;
    return 1;
}
