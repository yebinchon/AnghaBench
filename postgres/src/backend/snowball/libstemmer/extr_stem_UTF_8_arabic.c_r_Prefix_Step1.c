
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int bra; int c; int l; int* p; int ket; } ;


 int a_4 ;
 int find_among (struct SN_env*,int ,int) ;
 int len_utf8 (int*) ;
 int s_54 ;
 int s_55 ;
 int s_56 ;
 int s_57 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_Prefix_Step1(struct SN_env * z) {
    int among_var;
    z->bra = z->c;
    if (z->c + 3 >= z->l || z->p[z->c + 3] >> 5 != 5 || !((188 >> (z->p[z->c + 3] & 0x1f)) & 1)) return 0;
    among_var = find_among(z, a_4, 5);
    if (!(among_var)) return 0;
    z->ket = z->c;
    switch (among_var) {
        case 1:
            if (!(len_utf8(z->p) > 3)) return 0;
            { int ret = slice_from_s(z, 2, s_54);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            if (!(len_utf8(z->p) > 3)) return 0;
            { int ret = slice_from_s(z, 2, s_55);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            if (!(len_utf8(z->p) > 3)) return 0;
            { int ret = slice_from_s(z, 2, s_56);
                if (ret < 0) return ret;
            }
            break;
        case 4:
            if (!(len_utf8(z->p) > 3)) return 0;
            { int ret = slice_from_s(z, 2, s_57);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
