
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int ket; int l; int lb; int* I; int p; } ;


 int eq_s (struct SN_env*,int,int ) ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int r_adjectival (struct SN_env*) ;
 int r_derivational (struct SN_env*) ;
 int r_mark_regions (struct SN_env*) ;
 int r_noun (struct SN_env*) ;
 int r_perfective_gerund (struct SN_env*) ;
 int r_reflexive (struct SN_env*) ;
 int r_tidy_up (struct SN_env*) ;
 int r_verb (struct SN_env*) ;
 int s_10 ;
 int s_11 ;
 int s_9 ;
 int skip_utf8 (int ,int,int ,int,int) ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

extern int russian_UTF_8_stem(struct SN_env * z) {
    { int c1 = z->c;
        while(1) {
            int c2 = z->c;
            while(1) {
                int c3 = z->c;
                z->bra = z->c;
                if (!(eq_s(z, 2, s_9))) goto lab2;
                z->ket = z->c;
                z->c = c3;
                break;
            lab2:
                z->c = c3;
                { int ret = skip_utf8(z->p, z->c, 0, z->l, 1);
                    if (ret < 0) goto lab1;
                    z->c = ret;
                }
            }
            { int ret = slice_from_s(z, 2, s_10);
                if (ret < 0) return ret;
            }
            continue;
        lab1:
            z->c = c2;
            break;
        }
        z->c = c1;
    }

    { int ret = r_mark_regions(z);
        if (ret == 0) goto lab3;
        if (ret < 0) return ret;
    }
lab3:
    z->lb = z->c; z->c = z->l;


    { int mlimit4;
        if (z->c < z->I[0]) return 0;
        mlimit4 = z->lb; z->lb = z->I[0];
        { int m5 = z->l - z->c; (void)m5;
            { int m6 = z->l - z->c; (void)m6;
                { int ret = r_perfective_gerund(z);
                    if (ret == 0) goto lab6;
                    if (ret < 0) return ret;
                }
                goto lab5;
            lab6:
                z->c = z->l - m6;
                { int m7 = z->l - z->c; (void)m7;
                    { int ret = r_reflexive(z);
                        if (ret == 0) { z->c = z->l - m7; goto lab7; }
                        if (ret < 0) return ret;
                    }
                lab7:
                    ;
                }
                { int m8 = z->l - z->c; (void)m8;
                    { int ret = r_adjectival(z);
                        if (ret == 0) goto lab9;
                        if (ret < 0) return ret;
                    }
                    goto lab8;
                lab9:
                    z->c = z->l - m8;
                    { int ret = r_verb(z);
                        if (ret == 0) goto lab10;
                        if (ret < 0) return ret;
                    }
                    goto lab8;
                lab10:
                    z->c = z->l - m8;
                    { int ret = r_noun(z);
                        if (ret == 0) goto lab4;
                        if (ret < 0) return ret;
                    }
                }
            lab8:
                ;
            }
        lab5:
        lab4:
            z->c = z->l - m5;
        }
        { int m9 = z->l - z->c; (void)m9;
            z->ket = z->c;
            if (!(eq_s_b(z, 2, s_11))) { z->c = z->l - m9; goto lab11; }
            z->bra = z->c;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
        lab11:
            ;
        }
        { int m10 = z->l - z->c; (void)m10;
            { int ret = r_derivational(z);
                if (ret == 0) goto lab12;
                if (ret < 0) return ret;
            }
        lab12:
            z->c = z->l - m10;
        }
        { int m11 = z->l - z->c; (void)m11;
            { int ret = r_tidy_up(z);
                if (ret == 0) goto lab13;
                if (ret < 0) return ret;
            }
        lab13:
            z->c = z->l - m11;
        }
        z->lb = mlimit4;
    }
    z->c = z->lb;
    return 1;
}
