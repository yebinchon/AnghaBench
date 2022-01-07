
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int l; int lb; } ;


 int r_Step_1a (struct SN_env*) ;
 int r_Step_1b (struct SN_env*) ;
 int r_Step_1c (struct SN_env*) ;
 int r_Step_2 (struct SN_env*) ;
 int r_Step_3 (struct SN_env*) ;
 int r_Step_4 (struct SN_env*) ;
 int r_Step_5 (struct SN_env*) ;
 int r_exception1 (struct SN_env*) ;
 int r_exception2 (struct SN_env*) ;
 int r_mark_regions (struct SN_env*) ;
 int r_postlude (struct SN_env*) ;
 int r_prelude (struct SN_env*) ;

extern int english_ISO_8859_1_stem(struct SN_env * z) {
    { int c1 = z->c;
        { int ret = r_exception1(z);
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
        goto lab0;
    lab1:
        z->c = c1;
        { int c2 = z->c;
            { int ret = z->c + 3;
                if (0 > ret || ret > z->l) goto lab3;
                z->c = ret;
            }
            goto lab2;
        lab3:
            z->c = c2;
        }
        goto lab0;
    lab2:
        z->c = c1;

        { int ret = r_prelude(z);
            if (ret == 0) goto lab4;
            if (ret < 0) return ret;
        }
    lab4:

        { int ret = r_mark_regions(z);
            if (ret == 0) goto lab5;
            if (ret < 0) return ret;
        }
    lab5:
        z->lb = z->c; z->c = z->l;

        { int m3 = z->l - z->c; (void)m3;
            { int ret = r_Step_1a(z);
                if (ret == 0) goto lab6;
                if (ret < 0) return ret;
            }
        lab6:
            z->c = z->l - m3;
        }
        { int m4 = z->l - z->c; (void)m4;
            { int ret = r_exception2(z);
                if (ret == 0) goto lab8;
                if (ret < 0) return ret;
            }
            goto lab7;
        lab8:
            z->c = z->l - m4;
            { int m5 = z->l - z->c; (void)m5;
                { int ret = r_Step_1b(z);
                    if (ret == 0) goto lab9;
                    if (ret < 0) return ret;
                }
            lab9:
                z->c = z->l - m5;
            }
            { int m6 = z->l - z->c; (void)m6;
                { int ret = r_Step_1c(z);
                    if (ret == 0) goto lab10;
                    if (ret < 0) return ret;
                }
            lab10:
                z->c = z->l - m6;
            }
            { int m7 = z->l - z->c; (void)m7;
                { int ret = r_Step_2(z);
                    if (ret == 0) goto lab11;
                    if (ret < 0) return ret;
                }
            lab11:
                z->c = z->l - m7;
            }
            { int m8 = z->l - z->c; (void)m8;
                { int ret = r_Step_3(z);
                    if (ret == 0) goto lab12;
                    if (ret < 0) return ret;
                }
            lab12:
                z->c = z->l - m8;
            }
            { int m9 = z->l - z->c; (void)m9;
                { int ret = r_Step_4(z);
                    if (ret == 0) goto lab13;
                    if (ret < 0) return ret;
                }
            lab13:
                z->c = z->l - m9;
            }
            { int m10 = z->l - z->c; (void)m10;
                { int ret = r_Step_5(z);
                    if (ret == 0) goto lab14;
                    if (ret < 0) return ret;
                }
            lab14:
                z->c = z->l - m10;
            }
        }
    lab7:
        z->c = z->lb;
        { int c11 = z->c;
            { int ret = r_postlude(z);
                if (ret == 0) goto lab15;
                if (ret < 0) return ret;
            }
        lab15:
            z->c = c11;
        }
    }
lab0:
    return 1;
}
