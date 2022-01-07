
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int bra; int c; int l; int* p; int ket; } ;


 int a_10 ;
 int find_among (struct SN_env*,int ,int) ;
 int s_27 ;
 int s_28 ;
 int s_29 ;
 int s_30 ;
 int s_31 ;
 int s_32 ;
 int s_33 ;
 int s_34 ;
 int s_35 ;
 int s_36 ;
 int s_37 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_exception1(struct SN_env * z) {
    int among_var;
    z->bra = z->c;
    if (z->c + 2 >= z->l || z->p[z->c + 2] >> 5 != 3 || !((42750482 >> (z->p[z->c + 2] & 0x1f)) & 1)) return 0;
    among_var = find_among(z, a_10, 18);
    if (!(among_var)) return 0;
    z->ket = z->c;
    if (z->c < z->l) return 0;
    switch (among_var) {
        case 1:
            { int ret = slice_from_s(z, 3, s_27);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int ret = slice_from_s(z, 3, s_28);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            { int ret = slice_from_s(z, 3, s_29);
                if (ret < 0) return ret;
            }
            break;
        case 4:
            { int ret = slice_from_s(z, 3, s_30);
                if (ret < 0) return ret;
            }
            break;
        case 5:
            { int ret = slice_from_s(z, 3, s_31);
                if (ret < 0) return ret;
            }
            break;
        case 6:
            { int ret = slice_from_s(z, 3, s_32);
                if (ret < 0) return ret;
            }
            break;
        case 7:
            { int ret = slice_from_s(z, 5, s_33);
                if (ret < 0) return ret;
            }
            break;
        case 8:
            { int ret = slice_from_s(z, 4, s_34);
                if (ret < 0) return ret;
            }
            break;
        case 9:
            { int ret = slice_from_s(z, 5, s_35);
                if (ret < 0) return ret;
            }
            break;
        case 10:
            { int ret = slice_from_s(z, 4, s_36);
                if (ret < 0) return ret;
            }
            break;
        case 11:
            { int ret = slice_from_s(z, 5, s_37);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
