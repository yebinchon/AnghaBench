
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* B; int c; int lb; int l; int p; } ;


 int r_Checks1 (struct SN_env*) ;
 int r_Normalize_post (struct SN_env*) ;
 int r_Normalize_pre (struct SN_env*) ;
 int r_Prefix_Step1 (struct SN_env*) ;
 int r_Prefix_Step2 (struct SN_env*) ;
 int r_Prefix_Step3_Verb (struct SN_env*) ;
 int r_Prefix_Step3a_Noun (struct SN_env*) ;
 int r_Prefix_Step3b_Noun (struct SN_env*) ;
 int r_Prefix_Step4_Verb (struct SN_env*) ;
 int r_Suffix_All_alef_maqsura (struct SN_env*) ;
 int r_Suffix_Noun_Step1a (struct SN_env*) ;
 int r_Suffix_Noun_Step1b (struct SN_env*) ;
 int r_Suffix_Noun_Step2a (struct SN_env*) ;
 int r_Suffix_Noun_Step2b (struct SN_env*) ;
 int r_Suffix_Noun_Step2c1 (struct SN_env*) ;
 int r_Suffix_Noun_Step2c2 (struct SN_env*) ;
 int r_Suffix_Noun_Step3 (struct SN_env*) ;
 int r_Suffix_Verb_Step1 (struct SN_env*) ;
 int r_Suffix_Verb_Step2a (struct SN_env*) ;
 int r_Suffix_Verb_Step2b (struct SN_env*) ;
 int r_Suffix_Verb_Step2c (struct SN_env*) ;
 int skip_utf8 (int ,int,int,int ,int) ;

extern int arabic_UTF_8_stem(struct SN_env * z) {
    z->B[0] = 1;
    z->B[1] = 1;
    z->B[2] = 0;
    { int c1 = z->c;
        { int ret = r_Checks1(z);
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = c1;
    }

    { int ret = r_Normalize_pre(z);
        if (ret == 0) goto lab1;
        if (ret < 0) return ret;
    }
lab1:
    z->lb = z->c; z->c = z->l;

    { int m2 = z->l - z->c; (void)m2;
        { int m3 = z->l - z->c; (void)m3;
            if (!(z->B[1])) goto lab4;
            { int m4 = z->l - z->c; (void)m4;
                { int i = 1;
                    while(1) {
                        int m5 = z->l - z->c; (void)m5;
                        { int ret = r_Suffix_Verb_Step1(z);
                            if (ret == 0) goto lab7;
                            if (ret < 0) return ret;
                        }
                        i--;
                        continue;
                    lab7:
                        z->c = z->l - m5;
                        break;
                    }
                    if (i > 0) goto lab6;
                }
                { int m6 = z->l - z->c; (void)m6;
                    { int ret = r_Suffix_Verb_Step2a(z);
                        if (ret == 0) goto lab9;
                        if (ret < 0) return ret;
                    }
                    goto lab8;
                lab9:
                    z->c = z->l - m6;
                    { int ret = r_Suffix_Verb_Step2c(z);
                        if (ret == 0) goto lab10;
                        if (ret < 0) return ret;
                    }
                    goto lab8;
                lab10:
                    z->c = z->l - m6;
                    { int ret = skip_utf8(z->p, z->c, z->lb, 0, -1);
                        if (ret < 0) goto lab6;
                        z->c = ret;
                    }
                }
            lab8:
                goto lab5;
            lab6:
                z->c = z->l - m4;
                { int ret = r_Suffix_Verb_Step2b(z);
                    if (ret == 0) goto lab11;
                    if (ret < 0) return ret;
                }
                goto lab5;
            lab11:
                z->c = z->l - m4;
                { int ret = r_Suffix_Verb_Step2a(z);
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
            }
        lab5:
            goto lab3;
        lab4:
            z->c = z->l - m3;
            if (!(z->B[0])) goto lab12;
            { int m7 = z->l - z->c; (void)m7;
                { int m8 = z->l - z->c; (void)m8;
                    { int ret = r_Suffix_Noun_Step2c2(z);
                        if (ret == 0) goto lab15;
                        if (ret < 0) return ret;
                    }
                    goto lab14;
                lab15:
                    z->c = z->l - m8;

                    if (!(z->B[2])) goto lab17;
                    goto lab16;
                lab17:
                    { int ret = r_Suffix_Noun_Step1a(z);
                        if (ret == 0) goto lab16;
                        if (ret < 0) return ret;
                    }
                    { int m9 = z->l - z->c; (void)m9;
                        { int ret = r_Suffix_Noun_Step2a(z);
                            if (ret == 0) goto lab19;
                            if (ret < 0) return ret;
                        }
                        goto lab18;
                    lab19:
                        z->c = z->l - m9;
                        { int ret = r_Suffix_Noun_Step2b(z);
                            if (ret == 0) goto lab20;
                            if (ret < 0) return ret;
                        }
                        goto lab18;
                    lab20:
                        z->c = z->l - m9;
                        { int ret = r_Suffix_Noun_Step2c1(z);
                            if (ret == 0) goto lab21;
                            if (ret < 0) return ret;
                        }
                        goto lab18;
                    lab21:
                        z->c = z->l - m9;
                        { int ret = skip_utf8(z->p, z->c, z->lb, 0, -1);
                            if (ret < 0) goto lab16;
                            z->c = ret;
                        }
                    }
                lab18:
                    goto lab14;
                lab16:
                    z->c = z->l - m8;
                    { int ret = r_Suffix_Noun_Step1b(z);
                        if (ret == 0) goto lab22;
                        if (ret < 0) return ret;
                    }
                    { int m10 = z->l - z->c; (void)m10;
                        { int ret = r_Suffix_Noun_Step2a(z);
                            if (ret == 0) goto lab24;
                            if (ret < 0) return ret;
                        }
                        goto lab23;
                    lab24:
                        z->c = z->l - m10;
                        { int ret = r_Suffix_Noun_Step2b(z);
                            if (ret == 0) goto lab25;
                            if (ret < 0) return ret;
                        }
                        goto lab23;
                    lab25:
                        z->c = z->l - m10;
                        { int ret = r_Suffix_Noun_Step2c1(z);
                            if (ret == 0) goto lab22;
                            if (ret < 0) return ret;
                        }
                    }
                lab23:
                    goto lab14;
                lab22:
                    z->c = z->l - m8;

                    if (!(z->B[2])) goto lab27;
                    goto lab26;
                lab27:
                    { int ret = r_Suffix_Noun_Step2a(z);
                        if (ret == 0) goto lab26;
                        if (ret < 0) return ret;
                    }
                    goto lab14;
                lab26:
                    z->c = z->l - m8;
                    { int ret = r_Suffix_Noun_Step2b(z);
                        if (ret == 0) { z->c = z->l - m7; goto lab13; }
                        if (ret < 0) return ret;
                    }
                }
            lab14:
            lab13:
                ;
            }
            { int ret = r_Suffix_Noun_Step3(z);
                if (ret == 0) goto lab12;
                if (ret < 0) return ret;
            }
            goto lab3;
        lab12:
            z->c = z->l - m3;
            { int ret = r_Suffix_All_alef_maqsura(z);
                if (ret == 0) goto lab2;
                if (ret < 0) return ret;
            }
        }
    lab3:
    lab2:
        z->c = z->l - m2;
    }
    z->c = z->lb;
    { int c11 = z->c;
        { int c12 = z->c;
            { int ret = r_Prefix_Step1(z);
                if (ret == 0) { z->c = c12; goto lab29; }
                if (ret < 0) return ret;
            }
        lab29:
            ;
        }
        { int c13 = z->c;
            { int ret = r_Prefix_Step2(z);
                if (ret == 0) { z->c = c13; goto lab30; }
                if (ret < 0) return ret;
            }
        lab30:
            ;
        }
        { int c14 = z->c;
            { int ret = r_Prefix_Step3a_Noun(z);
                if (ret == 0) goto lab32;
                if (ret < 0) return ret;
            }
            goto lab31;
        lab32:
            z->c = c14;
            if (!(z->B[0])) goto lab33;
            { int ret = r_Prefix_Step3b_Noun(z);
                if (ret == 0) goto lab33;
                if (ret < 0) return ret;
            }
            goto lab31;
        lab33:
            z->c = c14;
            if (!(z->B[1])) goto lab28;
            { int c15 = z->c;
                { int ret = r_Prefix_Step3_Verb(z);
                    if (ret == 0) { z->c = c15; goto lab34; }
                    if (ret < 0) return ret;
                }
            lab34:
                ;
            }
            { int ret = r_Prefix_Step4_Verb(z);
                if (ret == 0) goto lab28;
                if (ret < 0) return ret;
            }
        }
    lab31:
    lab28:
        z->c = c11;
    }

    { int ret = r_Normalize_post(z);
        if (ret == 0) goto lab35;
        if (ret < 0) return ret;
    }
lab35:
    return 1;
}
