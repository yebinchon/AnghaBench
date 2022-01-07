
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; } ;


 int a_2 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int s_0 ;
 int s_1 ;
 int s_2 ;
 int s_3 ;
 int s_4 ;
 int s_5 ;
 int s_6 ;
 int s_7 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_fix_conflicts(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    if (z->c - 3 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((2621472 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
    among_var = find_among_b(z, a_2, 11);
    if (!(among_var)) return 0;
    z->bra = z->c;
    switch (among_var) {
        case 1:
            { int ret = slice_from_s(z, 5, s_0);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int ret = slice_from_s(z, 5, s_1);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            { int ret = slice_from_s(z, 7, s_2);
                if (ret < 0) return ret;
            }
            break;
        case 4:
            { int ret = slice_from_s(z, 4, s_3);
                if (ret < 0) return ret;
            }
            break;
        case 5:
            { int ret = slice_from_s(z, 4, s_4);
                if (ret < 0) return ret;
            }
            break;
        case 6:
            { int ret = slice_from_s(z, 6, s_5);
                if (ret < 0) return ret;
            }
            break;
        case 7:
            { int ret = slice_from_s(z, 6, s_6);
                if (ret < 0) return ret;
            }
            break;
        case 8:
            { int ret = slice_from_s(z, 6, s_7);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
