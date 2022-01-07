
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {scalar_t__* B; int c; int bra; int ket; } ;


 int a_1 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int s_24 ;
 int s_25 ;
 int s_26 ;
 int s_27 ;
 int s_28 ;
 int s_29 ;
 int s_30 ;
 int s_31 ;
 int s_32 ;
 int s_33 ;
 int s_34 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_step1(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    among_var = find_among_b(z, a_1, 40);
    if (!(among_var)) return 0;
    z->bra = z->c;
    switch (among_var) {
        case 1:
            { int ret = slice_from_s(z, 4, s_24);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int ret = slice_from_s(z, 6, s_25);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            { int ret = slice_from_s(z, 6, s_26);
                if (ret < 0) return ret;
            }
            break;
        case 4:
            { int ret = slice_from_s(z, 4, s_27);
                if (ret < 0) return ret;
            }
            break;
        case 5:
            { int ret = slice_from_s(z, 8, s_28);
                if (ret < 0) return ret;
            }
            break;
        case 6:
            { int ret = slice_from_s(z, 6, s_29);
                if (ret < 0) return ret;
            }
            break;
        case 7:
            { int ret = slice_from_s(z, 6, s_30);
                if (ret < 0) return ret;
            }
            break;
        case 8:
            { int ret = slice_from_s(z, 6, s_31);
                if (ret < 0) return ret;
            }
            break;
        case 9:
            { int ret = slice_from_s(z, 4, s_32);
                if (ret < 0) return ret;
            }
            break;
        case 10:
            { int ret = slice_from_s(z, 12, s_33);
                if (ret < 0) return ret;
            }
            break;
        case 11:
            { int ret = slice_from_s(z, 10, s_34);
                if (ret < 0) return ret;
            }
            break;
    }
    z->B[0] = 0;
    return 1;
}
