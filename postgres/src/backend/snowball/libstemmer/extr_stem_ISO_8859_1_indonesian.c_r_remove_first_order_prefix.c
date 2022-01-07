
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int bra; int c; int l; int* p; int ket; int* I; } ;


 int a_3 ;
 int find_among (struct SN_env*,int ,int) ;
 int g_vowel ;
 int in_grouping (struct SN_env*,int ,int,int,int ) ;
 int s_1 ;
 int s_2 ;
 int s_3 ;
 int s_4 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_remove_first_order_prefix(struct SN_env * z) {
    int among_var;
    z->bra = z->c;
    if (z->c + 1 >= z->l || (z->p[z->c + 1] != 105 && z->p[z->c + 1] != 101)) return 0;
    among_var = find_among(z, a_3, 12);
    if (!(among_var)) return 0;
    z->ket = z->c;
    switch (among_var) {
        case 1:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            z->I[1] = 1;
            z->I[0] -= 1;
            break;
        case 2:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            z->I[1] = 3;
            z->I[0] -= 1;
            break;
        case 3:
            z->I[1] = 1;
            { int ret = slice_from_s(z, 1, s_1);
                if (ret < 0) return ret;
            }
            z->I[0] -= 1;
            break;
        case 4:
            z->I[1] = 3;
            { int ret = slice_from_s(z, 1, s_2);
                if (ret < 0) return ret;
            }
            z->I[0] -= 1;
            break;
        case 5:
            z->I[1] = 1;
            z->I[0] -= 1;
            { int c1 = z->c;
                { int c2 = z->c;
                    if (in_grouping(z, g_vowel, 97, 117, 0)) goto lab1;
                    z->c = c2;
                    { int ret = slice_from_s(z, 1, s_3);
                        if (ret < 0) return ret;
                    }
                }
                goto lab0;
            lab1:
                z->c = c1;
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
            }
        lab0:
            break;
        case 6:
            z->I[1] = 3;
            z->I[0] -= 1;
            { int c3 = z->c;
                { int c4 = z->c;
                    if (in_grouping(z, g_vowel, 97, 117, 0)) goto lab3;
                    z->c = c4;
                    { int ret = slice_from_s(z, 1, s_4);
                        if (ret < 0) return ret;
                    }
                }
                goto lab2;
            lab3:
                z->c = c3;
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
            }
        lab2:
            break;
    }
    return 1;
}
