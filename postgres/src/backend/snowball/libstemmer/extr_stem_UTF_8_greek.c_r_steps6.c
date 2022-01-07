
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int bra; int l; int lb; int* p; scalar_t__* S; scalar_t__* B; } ;


 int a_15 ;
 int a_16 ;
 int a_17 ;
 int a_18 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int insert_v (struct SN_env*,int,int,scalar_t__) ;
 int s_45 ;
 int s_46 ;
 int s_47 ;
 int s_48 ;
 int s_49 ;
 int s_50 ;
 int s_51 ;
 int s_52 ;
 int s_53 ;
 int s_54 ;
 int s_55 ;
 int s_56 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;
 void* slice_to (struct SN_env*,scalar_t__) ;

__attribute__((used)) static int r_steps6(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    if (!(find_among_b(z, a_18, 6))) return 0;
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    z->B[0] = 0;
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (z->c - 3 <= z->lb || z->p[z->c - 1] != 181) goto lab1;
        if (!(find_among_b(z, a_15, 5))) goto lab1;
        z->bra = z->c;
        if (z->c > z->lb) goto lab1;
        z->S[0] = slice_to(z, z->S[0]);
        if (z->S[0] == 0) return -1;
        { int ret = slice_from_s(z, 6, s_45);
            if (ret < 0) return ret;
        }
        { int ret;
            { int saved_c = z->c;
                ret = insert_v(z, z->c, z->c, z->S[0]);
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        z->ket = z->c;
        if (z->c - 7 <= z->lb || z->p[z->c - 1] != 181) goto lab2;
        if (!(find_among_b(z, a_16, 2))) goto lab2;
        z->bra = z->c;
        if (z->c > z->lb) goto lab2;
        z->S[0] = slice_to(z, z->S[0]);
        if (z->S[0] == 0) return -1;
        { int ret = slice_from_s(z, 2, s_46);
            if (ret < 0) return ret;
        }
        { int ret;
            { int saved_c = z->c;
                ret = insert_v(z, z->c, z->c, z->S[0]);
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab0;
    lab2:
        z->c = z->l - m1;
        z->ket = z->c;
        if (z->c - 9 <= z->lb || (z->p[z->c - 1] != 186 && z->p[z->c - 1] != 189)) return 0;
        among_var = find_among_b(z, a_17, 10);
        if (!(among_var)) return 0;
        z->bra = z->c;
        switch (among_var) {
            case 1:
                { int ret = slice_from_s(z, 12, s_47);
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                { int ret = slice_from_s(z, 8, s_48);
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                { int ret = slice_from_s(z, 10, s_49);
                    if (ret < 0) return ret;
                }
                break;
            case 4:
                { int ret = slice_from_s(z, 6, s_50);
                    if (ret < 0) return ret;
                }
                break;
            case 5:
                { int ret = slice_from_s(z, 12, s_51);
                    if (ret < 0) return ret;
                }
                break;
            case 6:
                { int ret = slice_from_s(z, 10, s_52);
                    if (ret < 0) return ret;
                }
                break;
            case 7:
                { int ret = slice_from_s(z, 6, s_53);
                    if (ret < 0) return ret;
                }
                break;
            case 8:
                { int ret = slice_from_s(z, 16, s_54);
                    if (ret < 0) return ret;
                }
                break;
            case 9:
                { int ret = slice_from_s(z, 12, s_55);
                    if (ret < 0) return ret;
                }
                break;
            case 10:
                { int ret = slice_from_s(z, 10, s_56);
                    if (ret < 0) return ret;
                }
                break;
        }
    }
lab0:
    return 1;
}
