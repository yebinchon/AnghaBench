
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; } ;


 int a_5 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_valid_LI ;
 int in_grouping_b_U (struct SN_env*,int ,int,int,int ) ;
 int r_R1 (struct SN_env*) ;
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
 int s_20 ;
 int s_21 ;
 int s_22 ;
 int s_9 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_Step_2(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((815616 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
    among_var = find_among_b(z, a_5, 24);
    if (!(among_var)) return 0;
    z->bra = z->c;
    { int ret = r_R1(z);
        if (ret <= 0) return ret;
    }
    switch (among_var) {
        case 1:
            { int ret = slice_from_s(z, 4, s_9);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int ret = slice_from_s(z, 4, s_10);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            { int ret = slice_from_s(z, 4, s_11);
                if (ret < 0) return ret;
            }
            break;
        case 4:
            { int ret = slice_from_s(z, 4, s_12);
                if (ret < 0) return ret;
            }
            break;
        case 5:
            { int ret = slice_from_s(z, 3, s_13);
                if (ret < 0) return ret;
            }
            break;
        case 6:
            { int ret = slice_from_s(z, 3, s_14);
                if (ret < 0) return ret;
            }
            break;
        case 7:
            { int ret = slice_from_s(z, 3, s_15);
                if (ret < 0) return ret;
            }
            break;
        case 8:
            { int ret = slice_from_s(z, 2, s_16);
                if (ret < 0) return ret;
            }
            break;
        case 9:
            { int ret = slice_from_s(z, 3, s_17);
                if (ret < 0) return ret;
            }
            break;
        case 10:
            { int ret = slice_from_s(z, 3, s_18);
                if (ret < 0) return ret;
            }
            break;
        case 11:
            { int ret = slice_from_s(z, 3, s_19);
                if (ret < 0) return ret;
            }
            break;
        case 12:
            { int ret = slice_from_s(z, 3, s_20);
                if (ret < 0) return ret;
            }
            break;
        case 13:
            if (z->c <= z->lb || z->p[z->c - 1] != 'l') return 0;
            z->c--;
            { int ret = slice_from_s(z, 2, s_21);
                if (ret < 0) return ret;
            }
            break;
        case 14:
            { int ret = slice_from_s(z, 4, s_22);
                if (ret < 0) return ret;
            }
            break;
        case 15:
            if (in_grouping_b_U(z, g_valid_LI, 99, 116, 0)) return 0;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
