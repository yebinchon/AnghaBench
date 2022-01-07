
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int l; int bra; } ;


 int r_mark_DA (struct SN_env*) ;
 int r_mark_ki (struct SN_env*) ;
 int r_mark_lAr (struct SN_env*) ;
 int r_mark_lArI (struct SN_env*) ;
 int r_mark_nUn (struct SN_env*) ;
 int r_mark_ndA (struct SN_env*) ;
 int r_mark_possessives (struct SN_env*) ;
 int r_mark_sU (struct SN_env*) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_stem_suffix_chain_before_ki(struct SN_env * z) {
    z->ket = z->c;
    { int ret = r_mark_ki(z);
        if (ret <= 0) return ret;
    }
    { int m1 = z->l - z->c; (void)m1;
        { int ret = r_mark_DA(z);
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
        z->bra = z->c;
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
        { int m2 = z->l - z->c; (void)m2;
            z->ket = z->c;
            { int m3 = z->l - z->c; (void)m3;
                { int ret = r_mark_lAr(z);
                    if (ret == 0) goto lab4;
                    if (ret < 0) return ret;
                }
                z->bra = z->c;
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                { int m4 = z->l - z->c; (void)m4;
                    { int ret = r_stem_suffix_chain_before_ki(z);
                        if (ret == 0) { z->c = z->l - m4; goto lab5; }
                        if (ret < 0) return ret;
                    }
                lab5:
                    ;
                }
                goto lab3;
            lab4:
                z->c = z->l - m3;
                { int ret = r_mark_possessives(z);
                    if (ret == 0) { z->c = z->l - m2; goto lab2; }
                    if (ret < 0) return ret;
                }
                z->bra = z->c;
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                { int m5 = z->l - z->c; (void)m5;
                    z->ket = z->c;
                    { int ret = r_mark_lAr(z);
                        if (ret == 0) { z->c = z->l - m5; goto lab6; }
                        if (ret < 0) return ret;
                    }
                    z->bra = z->c;
                    { int ret = slice_del(z);
                        if (ret < 0) return ret;
                    }
                    { int ret = r_stem_suffix_chain_before_ki(z);
                        if (ret == 0) { z->c = z->l - m5; goto lab6; }
                        if (ret < 0) return ret;
                    }
                lab6:
                    ;
                }
            }
        lab3:
        lab2:
            ;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        { int ret = r_mark_nUn(z);
            if (ret == 0) goto lab7;
            if (ret < 0) return ret;
        }
        z->bra = z->c;
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
        { int m6 = z->l - z->c; (void)m6;
            z->ket = z->c;
            { int m7 = z->l - z->c; (void)m7;
                { int ret = r_mark_lArI(z);
                    if (ret == 0) goto lab10;
                    if (ret < 0) return ret;
                }
                z->bra = z->c;
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                goto lab9;
            lab10:
                z->c = z->l - m7;
                z->ket = z->c;
                { int m8 = z->l - z->c; (void)m8;
                    { int ret = r_mark_possessives(z);
                        if (ret == 0) goto lab13;
                        if (ret < 0) return ret;
                    }
                    goto lab12;
                lab13:
                    z->c = z->l - m8;
                    { int ret = r_mark_sU(z);
                        if (ret == 0) goto lab11;
                        if (ret < 0) return ret;
                    }
                }
            lab12:
                z->bra = z->c;
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                { int m9 = z->l - z->c; (void)m9;
                    z->ket = z->c;
                    { int ret = r_mark_lAr(z);
                        if (ret == 0) { z->c = z->l - m9; goto lab14; }
                        if (ret < 0) return ret;
                    }
                    z->bra = z->c;
                    { int ret = slice_del(z);
                        if (ret < 0) return ret;
                    }
                    { int ret = r_stem_suffix_chain_before_ki(z);
                        if (ret == 0) { z->c = z->l - m9; goto lab14; }
                        if (ret < 0) return ret;
                    }
                lab14:
                    ;
                }
                goto lab9;
            lab11:
                z->c = z->l - m7;
                { int ret = r_stem_suffix_chain_before_ki(z);
                    if (ret == 0) { z->c = z->l - m6; goto lab8; }
                    if (ret < 0) return ret;
                }
            }
        lab9:
        lab8:
            ;
        }
        goto lab0;
    lab7:
        z->c = z->l - m1;
        { int ret = r_mark_ndA(z);
            if (ret <= 0) return ret;
        }
        { int m10 = z->l - z->c; (void)m10;
            { int ret = r_mark_lArI(z);
                if (ret == 0) goto lab16;
                if (ret < 0) return ret;
            }
            z->bra = z->c;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            goto lab15;
        lab16:
            z->c = z->l - m10;
            { int ret = r_mark_sU(z);
                if (ret == 0) goto lab17;
                if (ret < 0) return ret;
            }
            z->bra = z->c;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            { int m11 = z->l - z->c; (void)m11;
                z->ket = z->c;
                { int ret = r_mark_lAr(z);
                    if (ret == 0) { z->c = z->l - m11; goto lab18; }
                    if (ret < 0) return ret;
                }
                z->bra = z->c;
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                { int ret = r_stem_suffix_chain_before_ki(z);
                    if (ret == 0) { z->c = z->l - m11; goto lab18; }
                    if (ret < 0) return ret;
                }
            lab18:
                ;
            }
            goto lab15;
        lab17:
            z->c = z->l - m10;
            { int ret = r_stem_suffix_chain_before_ki(z);
                if (ret <= 0) return ret;
            }
        }
    lab15:
        ;
    }
lab0:
    return 1;
}
