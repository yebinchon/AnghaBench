
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int lb; int c; int l; int* B; } ;


 int r_has_min_length (struct SN_env*) ;
 int r_step1 (struct SN_env*) ;
 int r_step2a (struct SN_env*) ;
 int r_step2b (struct SN_env*) ;
 int r_step2c (struct SN_env*) ;
 int r_step2d (struct SN_env*) ;
 int r_step3 (struct SN_env*) ;
 int r_step4 (struct SN_env*) ;
 int r_step5a (struct SN_env*) ;
 int r_step5b (struct SN_env*) ;
 int r_step5c (struct SN_env*) ;
 int r_step5d (struct SN_env*) ;
 int r_step5e (struct SN_env*) ;
 int r_step5f (struct SN_env*) ;
 int r_step5g (struct SN_env*) ;
 int r_step5h (struct SN_env*) ;
 int r_step5i (struct SN_env*) ;
 int r_step5j (struct SN_env*) ;
 int r_step5k (struct SN_env*) ;
 int r_step5l (struct SN_env*) ;
 int r_step5m (struct SN_env*) ;
 int r_step6 (struct SN_env*) ;
 int r_step7 (struct SN_env*) ;
 int r_steps1 (struct SN_env*) ;
 int r_steps10 (struct SN_env*) ;
 int r_steps2 (struct SN_env*) ;
 int r_steps3 (struct SN_env*) ;
 int r_steps4 (struct SN_env*) ;
 int r_steps5 (struct SN_env*) ;
 int r_steps6 (struct SN_env*) ;
 int r_steps7 (struct SN_env*) ;
 int r_steps8 (struct SN_env*) ;
 int r_steps9 (struct SN_env*) ;
 int r_tolower (struct SN_env*) ;

extern int greek_UTF_8_stem(struct SN_env * z) {
    z->lb = z->c; z->c = z->l;

    { int m1 = z->l - z->c; (void)m1;
        { int ret = r_tolower(z);
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = z->l - m1;
    }
    { int ret = r_has_min_length(z);
        if (ret <= 0) return ret;
    }
    z->B[0] = 1;
    { int m2 = z->l - z->c; (void)m2;
        { int ret = r_step1(z);
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
    lab1:
        z->c = z->l - m2;
    }
    { int m3 = z->l - z->c; (void)m3;
        { int ret = r_steps1(z);
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m3;
    }
    { int m4 = z->l - z->c; (void)m4;
        { int ret = r_steps2(z);
            if (ret == 0) goto lab3;
            if (ret < 0) return ret;
        }
    lab3:
        z->c = z->l - m4;
    }
    { int m5 = z->l - z->c; (void)m5;
        { int ret = r_steps3(z);
            if (ret == 0) goto lab4;
            if (ret < 0) return ret;
        }
    lab4:
        z->c = z->l - m5;
    }
    { int m6 = z->l - z->c; (void)m6;
        { int ret = r_steps4(z);
            if (ret == 0) goto lab5;
            if (ret < 0) return ret;
        }
    lab5:
        z->c = z->l - m6;
    }
    { int m7 = z->l - z->c; (void)m7;
        { int ret = r_steps5(z);
            if (ret == 0) goto lab6;
            if (ret < 0) return ret;
        }
    lab6:
        z->c = z->l - m7;
    }
    { int m8 = z->l - z->c; (void)m8;
        { int ret = r_steps6(z);
            if (ret == 0) goto lab7;
            if (ret < 0) return ret;
        }
    lab7:
        z->c = z->l - m8;
    }
    { int m9 = z->l - z->c; (void)m9;
        { int ret = r_steps7(z);
            if (ret == 0) goto lab8;
            if (ret < 0) return ret;
        }
    lab8:
        z->c = z->l - m9;
    }
    { int m10 = z->l - z->c; (void)m10;
        { int ret = r_steps8(z);
            if (ret == 0) goto lab9;
            if (ret < 0) return ret;
        }
    lab9:
        z->c = z->l - m10;
    }
    { int m11 = z->l - z->c; (void)m11;
        { int ret = r_steps9(z);
            if (ret == 0) goto lab10;
            if (ret < 0) return ret;
        }
    lab10:
        z->c = z->l - m11;
    }
    { int m12 = z->l - z->c; (void)m12;
        { int ret = r_steps10(z);
            if (ret == 0) goto lab11;
            if (ret < 0) return ret;
        }
    lab11:
        z->c = z->l - m12;
    }
    { int m13 = z->l - z->c; (void)m13;
        { int ret = r_step2a(z);
            if (ret == 0) goto lab12;
            if (ret < 0) return ret;
        }
    lab12:
        z->c = z->l - m13;
    }
    { int m14 = z->l - z->c; (void)m14;
        { int ret = r_step2b(z);
            if (ret == 0) goto lab13;
            if (ret < 0) return ret;
        }
    lab13:
        z->c = z->l - m14;
    }
    { int m15 = z->l - z->c; (void)m15;
        { int ret = r_step2c(z);
            if (ret == 0) goto lab14;
            if (ret < 0) return ret;
        }
    lab14:
        z->c = z->l - m15;
    }
    { int m16 = z->l - z->c; (void)m16;
        { int ret = r_step2d(z);
            if (ret == 0) goto lab15;
            if (ret < 0) return ret;
        }
    lab15:
        z->c = z->l - m16;
    }
    { int m17 = z->l - z->c; (void)m17;
        { int ret = r_step3(z);
            if (ret == 0) goto lab16;
            if (ret < 0) return ret;
        }
    lab16:
        z->c = z->l - m17;
    }
    { int m18 = z->l - z->c; (void)m18;
        { int ret = r_step4(z);
            if (ret == 0) goto lab17;
            if (ret < 0) return ret;
        }
    lab17:
        z->c = z->l - m18;
    }
    { int m19 = z->l - z->c; (void)m19;
        { int ret = r_step5a(z);
            if (ret == 0) goto lab18;
            if (ret < 0) return ret;
        }
    lab18:
        z->c = z->l - m19;
    }
    { int m20 = z->l - z->c; (void)m20;
        { int ret = r_step5b(z);
            if (ret == 0) goto lab19;
            if (ret < 0) return ret;
        }
    lab19:
        z->c = z->l - m20;
    }
    { int m21 = z->l - z->c; (void)m21;
        { int ret = r_step5c(z);
            if (ret == 0) goto lab20;
            if (ret < 0) return ret;
        }
    lab20:
        z->c = z->l - m21;
    }
    { int m22 = z->l - z->c; (void)m22;
        { int ret = r_step5d(z);
            if (ret == 0) goto lab21;
            if (ret < 0) return ret;
        }
    lab21:
        z->c = z->l - m22;
    }
    { int m23 = z->l - z->c; (void)m23;
        { int ret = r_step5e(z);
            if (ret == 0) goto lab22;
            if (ret < 0) return ret;
        }
    lab22:
        z->c = z->l - m23;
    }
    { int m24 = z->l - z->c; (void)m24;
        { int ret = r_step5f(z);
            if (ret == 0) goto lab23;
            if (ret < 0) return ret;
        }
    lab23:
        z->c = z->l - m24;
    }
    { int m25 = z->l - z->c; (void)m25;
        { int ret = r_step5g(z);
            if (ret == 0) goto lab24;
            if (ret < 0) return ret;
        }
    lab24:
        z->c = z->l - m25;
    }
    { int m26 = z->l - z->c; (void)m26;
        { int ret = r_step5h(z);
            if (ret == 0) goto lab25;
            if (ret < 0) return ret;
        }
    lab25:
        z->c = z->l - m26;
    }
    { int m27 = z->l - z->c; (void)m27;
        { int ret = r_step5j(z);
            if (ret == 0) goto lab26;
            if (ret < 0) return ret;
        }
    lab26:
        z->c = z->l - m27;
    }
    { int m28 = z->l - z->c; (void)m28;
        { int ret = r_step5i(z);
            if (ret == 0) goto lab27;
            if (ret < 0) return ret;
        }
    lab27:
        z->c = z->l - m28;
    }
    { int m29 = z->l - z->c; (void)m29;
        { int ret = r_step5k(z);
            if (ret == 0) goto lab28;
            if (ret < 0) return ret;
        }
    lab28:
        z->c = z->l - m29;
    }
    { int m30 = z->l - z->c; (void)m30;
        { int ret = r_step5l(z);
            if (ret == 0) goto lab29;
            if (ret < 0) return ret;
        }
    lab29:
        z->c = z->l - m30;
    }
    { int m31 = z->l - z->c; (void)m31;
        { int ret = r_step5m(z);
            if (ret == 0) goto lab30;
            if (ret < 0) return ret;
        }
    lab30:
        z->c = z->l - m31;
    }
    { int m32 = z->l - z->c; (void)m32;
        { int ret = r_step6(z);
            if (ret == 0) goto lab31;
            if (ret < 0) return ret;
        }
    lab31:
        z->c = z->l - m32;
    }
    { int m33 = z->l - z->c; (void)m33;
        { int ret = r_step7(z);
            if (ret == 0) goto lab32;
            if (ret < 0) return ret;
        }
    lab32:
        z->c = z->l - m33;
    }
    z->c = z->lb;
    return 1;
}
