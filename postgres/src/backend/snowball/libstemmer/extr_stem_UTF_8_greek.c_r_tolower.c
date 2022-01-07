
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int ket; int bra; int lb; int p; } ;


 int a_0 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int s_0 ;
 int s_1 ;
 int s_10 ;
 int s_11 ;
 int s_12 ;
 int s_13 ;
 int s_14 ;
 int s_15 ;
 int s_16 ;
 int s_17 ;
 int s_18 ;
 int s_19 ;
 int s_2 ;
 int s_20 ;
 int s_21 ;
 int s_22 ;
 int s_23 ;
 int s_3 ;
 int s_4 ;
 int s_5 ;
 int s_6 ;
 int s_7 ;
 int s_8 ;
 int s_9 ;
 int skip_utf8 (int ,int,int ,int ,int) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_tolower(struct SN_env * z) {
    int among_var;
    while(1) {
        int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        among_var = find_among_b(z, a_0, 46);
        if (!(among_var)) goto lab0;
        z->bra = z->c;
        switch (among_var) {
            case 1:
                { int ret = slice_from_s(z, 2, s_0);
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                { int ret = slice_from_s(z, 2, s_1);
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                { int ret = slice_from_s(z, 2, s_2);
                    if (ret < 0) return ret;
                }
                break;
            case 4:
                { int ret = slice_from_s(z, 2, s_3);
                    if (ret < 0) return ret;
                }
                break;
            case 5:
                { int ret = slice_from_s(z, 2, s_4);
                    if (ret < 0) return ret;
                }
                break;
            case 6:
                { int ret = slice_from_s(z, 2, s_5);
                    if (ret < 0) return ret;
                }
                break;
            case 7:
                { int ret = slice_from_s(z, 2, s_6);
                    if (ret < 0) return ret;
                }
                break;
            case 8:
                { int ret = slice_from_s(z, 2, s_7);
                    if (ret < 0) return ret;
                }
                break;
            case 9:
                { int ret = slice_from_s(z, 2, s_8);
                    if (ret < 0) return ret;
                }
                break;
            case 10:
                { int ret = slice_from_s(z, 2, s_9);
                    if (ret < 0) return ret;
                }
                break;
            case 11:
                { int ret = slice_from_s(z, 2, s_10);
                    if (ret < 0) return ret;
                }
                break;
            case 12:
                { int ret = slice_from_s(z, 2, s_11);
                    if (ret < 0) return ret;
                }
                break;
            case 13:
                { int ret = slice_from_s(z, 2, s_12);
                    if (ret < 0) return ret;
                }
                break;
            case 14:
                { int ret = slice_from_s(z, 2, s_13);
                    if (ret < 0) return ret;
                }
                break;
            case 15:
                { int ret = slice_from_s(z, 2, s_14);
                    if (ret < 0) return ret;
                }
                break;
            case 16:
                { int ret = slice_from_s(z, 2, s_15);
                    if (ret < 0) return ret;
                }
                break;
            case 17:
                { int ret = slice_from_s(z, 2, s_16);
                    if (ret < 0) return ret;
                }
                break;
            case 18:
                { int ret = slice_from_s(z, 2, s_17);
                    if (ret < 0) return ret;
                }
                break;
            case 19:
                { int ret = slice_from_s(z, 2, s_18);
                    if (ret < 0) return ret;
                }
                break;
            case 20:
                { int ret = slice_from_s(z, 2, s_19);
                    if (ret < 0) return ret;
                }
                break;
            case 21:
                { int ret = slice_from_s(z, 2, s_20);
                    if (ret < 0) return ret;
                }
                break;
            case 22:
                { int ret = slice_from_s(z, 2, s_21);
                    if (ret < 0) return ret;
                }
                break;
            case 23:
                { int ret = slice_from_s(z, 2, s_22);
                    if (ret < 0) return ret;
                }
                break;
            case 24:
                { int ret = slice_from_s(z, 2, s_23);
                    if (ret < 0) return ret;
                }
                break;
            case 25:
                { int ret = skip_utf8(z->p, z->c, z->lb, 0, -1);
                    if (ret < 0) goto lab0;
                    z->c = ret;
                }
                break;
        }
        continue;
    lab0:
        z->c = z->l - m1;
        break;
    }
    return 1;
}
