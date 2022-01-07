
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; } ;


 int a_6 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_R1 (struct SN_env*) ;
 int r_R2 (struct SN_env*) ;
 int s_23 ;
 int s_24 ;
 int s_25 ;
 int s_26 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_Step_3(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    if (z->c - 2 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((528928 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
    among_var = find_among_b(z, a_6, 9);
    if (!(among_var)) return 0;
    z->bra = z->c;
    { int ret = r_R1(z);
        if (ret <= 0) return ret;
    }
    switch (among_var) {
        case 1:
            { int ret = slice_from_s(z, 4, s_23);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int ret = slice_from_s(z, 3, s_24);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            { int ret = slice_from_s(z, 2, s_25);
                if (ret < 0) return ret;
            }
            break;
        case 4:
            { int ret = slice_from_s(z, 2, s_26);
                if (ret < 0) return ret;
            }
            break;
        case 5:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 6:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
