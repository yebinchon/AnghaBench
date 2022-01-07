
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* I; int c; int lb; int l; } ;


 int g_vowel ;
 int out_grouping (struct SN_env*,int ,int,int,int) ;
 int r_remove_first_order_prefix (struct SN_env*) ;
 int r_remove_particle (struct SN_env*) ;
 int r_remove_possessive_pronoun (struct SN_env*) ;
 int r_remove_second_order_prefix (struct SN_env*) ;
 int r_remove_suffix (struct SN_env*) ;

extern int indonesian_ISO_8859_1_stem(struct SN_env * z) {
    z->I[0] = 0;
    { int c1 = z->c;
        while(1) {
            int c2 = z->c;
            {
                int ret = out_grouping(z, g_vowel, 97, 117, 1);
                if (ret < 0) goto lab1;
                z->c += ret;
            }
            z->I[0] += 1;
            continue;
        lab1:
            z->c = c2;
            break;
        }
        z->c = c1;
    }
    if (!(z->I[0] > 2)) return 0;
    z->I[1] = 0;
    z->lb = z->c; z->c = z->l;

    { int m3 = z->l - z->c; (void)m3;
        { int ret = r_remove_particle(z);
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m3;
    }
    if (!(z->I[0] > 2)) return 0;
    { int m4 = z->l - z->c; (void)m4;
        { int ret = r_remove_possessive_pronoun(z);
            if (ret == 0) goto lab3;
            if (ret < 0) return ret;
        }
    lab3:
        z->c = z->l - m4;
    }
    z->c = z->lb;
    if (!(z->I[0] > 2)) return 0;
    { int c5 = z->c;
        { int c_test6 = z->c;
            { int ret = r_remove_first_order_prefix(z);
                if (ret == 0) goto lab5;
                if (ret < 0) return ret;
            }
            { int c7 = z->c;
                { int c_test8 = z->c;
                    if (!(z->I[0] > 2)) goto lab6;
                    z->lb = z->c; z->c = z->l;

                    { int ret = r_remove_suffix(z);
                        if (ret == 0) goto lab6;
                        if (ret < 0) return ret;
                    }
                    z->c = z->lb;
                    z->c = c_test8;
                }
                if (!(z->I[0] > 2)) goto lab6;
                { int ret = r_remove_second_order_prefix(z);
                    if (ret == 0) goto lab6;
                    if (ret < 0) return ret;
                }
            lab6:
                z->c = c7;
            }
            z->c = c_test6;
        }
        goto lab4;
    lab5:
        z->c = c5;
        { int c9 = z->c;
            { int ret = r_remove_second_order_prefix(z);
                if (ret == 0) goto lab7;
                if (ret < 0) return ret;
            }
        lab7:
            z->c = c9;
        }
        { int c10 = z->c;
            if (!(z->I[0] > 2)) goto lab8;
            z->lb = z->c; z->c = z->l;

            { int ret = r_remove_suffix(z);
                if (ret == 0) goto lab8;
                if (ret < 0) return ret;
            }
            z->c = z->lb;
        lab8:
            z->c = c10;
        }
    }
lab4:
    return 1;
}
