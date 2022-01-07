
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int lb; int l; int ket; char* p; int bra; } ;


 int eq_s_b (struct SN_env*,int,int ) ;
 int r_i_verb_suffix (struct SN_env*) ;
 int r_mark_regions (struct SN_env*) ;
 int r_postlude (struct SN_env*) ;
 int r_prelude (struct SN_env*) ;
 int r_residual_suffix (struct SN_env*) ;
 int r_standard_suffix (struct SN_env*) ;
 int r_un_accent (struct SN_env*) ;
 int r_un_double (struct SN_env*) ;
 int r_verb_suffix (struct SN_env*) ;
 int s_37 ;
 int s_38 ;
 int s_39 ;
 int slice_from_s (struct SN_env*,int,int ) ;

extern int french_UTF_8_stem(struct SN_env * z) {
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
        { int m3 = z->l - z->c; (void)m3;
            { int m4 = z->l - z->c; (void)m4;
                { int m5 = z->l - z->c; (void)m5;
                    { int ret = r_standard_suffix(z);
                        if (ret == 0) goto lab6;
                        if (ret < 0) return ret;
                    }
                    goto lab5;
                lab6:
                    z->c = z->l - m5;
                    { int ret = r_i_verb_suffix(z);
                        if (ret == 0) goto lab7;
                        if (ret < 0) return ret;
                    }
                    goto lab5;
                lab7:
                    z->c = z->l - m5;
                    { int ret = r_verb_suffix(z);
                        if (ret == 0) goto lab4;
                        if (ret < 0) return ret;
                    }
                }
            lab5:
                z->c = z->l - m4;
                { int m6 = z->l - z->c; (void)m6;
                    z->ket = z->c;
                    { int m7 = z->l - z->c; (void)m7;
                        if (z->c <= z->lb || z->p[z->c - 1] != 'Y') goto lab10;
                        z->c--;
                        z->bra = z->c;
                        { int ret = slice_from_s(z, 1, s_37);
                            if (ret < 0) return ret;
                        }
                        goto lab9;
                    lab10:
                        z->c = z->l - m7;
                        if (!(eq_s_b(z, 2, s_38))) { z->c = z->l - m6; goto lab8; }
                        z->bra = z->c;
                        { int ret = slice_from_s(z, 1, s_39);
                            if (ret < 0) return ret;
                        }
                    }
                lab9:
                lab8:
                    ;
                }
            }
            goto lab3;
        lab4:
            z->c = z->l - m3;
            { int ret = r_residual_suffix(z);
                if (ret == 0) goto lab2;
                if (ret < 0) return ret;
            }
        }
    lab3:
    lab2:
        z->c = z->l - m2;
    }
    { int m8 = z->l - z->c; (void)m8;
        { int ret = r_un_double(z);
            if (ret == 0) goto lab11;
            if (ret < 0) return ret;
        }
    lab11:
        z->c = z->l - m8;
    }
    { int m9 = z->l - z->c; (void)m9;
        { int ret = r_un_accent(z);
            if (ret == 0) goto lab12;
            if (ret < 0) return ret;
        }
    lab12:
        z->c = z->l - m9;
    }
    z->c = z->lb;
    { int c10 = z->c;
        { int ret = r_postlude(z);
            if (ret == 0) goto lab13;
            if (ret < 0) return ret;
        }
    lab13:
        z->c = c10;
    }
    return 1;
}
