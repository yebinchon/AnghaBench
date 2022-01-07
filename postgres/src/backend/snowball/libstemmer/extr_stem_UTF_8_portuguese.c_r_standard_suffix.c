
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; int l; } ;


 int a_2 ;
 int a_3 ;
 int a_4 ;
 int a_5 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_R1 (struct SN_env*) ;
 int r_R2 (struct SN_env*) ;
 int r_RV (struct SN_env*) ;
 int s_4 ;
 int s_5 ;
 int s_6 ;
 int s_7 ;
 int s_8 ;
 int s_9 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_standard_suffix(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    if (z->c - 2 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((823330 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
    among_var = find_among_b(z, a_5, 45);
    if (!(among_var)) return 0;
    z->bra = z->c;
    switch (among_var) {
        case 1:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_from_s(z, 3, s_4);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_from_s(z, 1, s_5);
                if (ret < 0) return ret;
            }
            break;
        case 4:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_from_s(z, 4, s_6);
                if (ret < 0) return ret;
            }
            break;
        case 5:
            { int ret = r_R1(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            { int m1 = z->l - z->c; (void)m1;
                z->ket = z->c;
                if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((4718616 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->c = z->l - m1; goto lab0; }
                among_var = find_among_b(z, a_2, 4);
                if (!(among_var)) { z->c = z->l - m1; goto lab0; }
                z->bra = z->c;
                { int ret = r_R2(z);
                    if (ret == 0) { z->c = z->l - m1; goto lab0; }
                    if (ret < 0) return ret;
                }
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                switch (among_var) {
                    case 1:
                        z->ket = z->c;
                        if (!(eq_s_b(z, 2, s_7))) { z->c = z->l - m1; goto lab0; }
                        z->bra = z->c;
                        { int ret = r_R2(z);
                            if (ret == 0) { z->c = z->l - m1; goto lab0; }
                            if (ret < 0) return ret;
                        }
                        { int ret = slice_del(z);
                            if (ret < 0) return ret;
                        }
                        break;
                }
            lab0:
                ;
            }
            break;
        case 6:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            { int m2 = z->l - z->c; (void)m2;
                z->ket = z->c;
                if (z->c - 3 <= z->lb || (z->p[z->c - 1] != 101 && z->p[z->c - 1] != 108)) { z->c = z->l - m2; goto lab1; }
                if (!(find_among_b(z, a_3, 3))) { z->c = z->l - m2; goto lab1; }
                z->bra = z->c;
                { int ret = r_R2(z);
                    if (ret == 0) { z->c = z->l - m2; goto lab1; }
                    if (ret < 0) return ret;
                }
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
            lab1:
                ;
            }
            break;
        case 7:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            { int m3 = z->l - z->c; (void)m3;
                z->ket = z->c;
                if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((4198408 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->c = z->l - m3; goto lab2; }
                if (!(find_among_b(z, a_4, 3))) { z->c = z->l - m3; goto lab2; }
                z->bra = z->c;
                { int ret = r_R2(z);
                    if (ret == 0) { z->c = z->l - m3; goto lab2; }
                    if (ret < 0) return ret;
                }
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
            lab2:
                ;
            }
            break;
        case 8:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            { int m4 = z->l - z->c; (void)m4;
                z->ket = z->c;
                if (!(eq_s_b(z, 2, s_8))) { z->c = z->l - m4; goto lab3; }
                z->bra = z->c;
                { int ret = r_R2(z);
                    if (ret == 0) { z->c = z->l - m4; goto lab3; }
                    if (ret < 0) return ret;
                }
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
            lab3:
                ;
            }
            break;
        case 9:
            { int ret = r_RV(z);
                if (ret <= 0) return ret;
            }
            if (z->c <= z->lb || z->p[z->c - 1] != 'e') return 0;
            z->c--;
            { int ret = slice_from_s(z, 2, s_9);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
