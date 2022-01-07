
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int l; int* p; int ket; } ;


 int a_7 ;
 int eq_s (struct SN_env*,int,int ) ;
 int find_among (struct SN_env*,int ,int) ;
 int len_utf8 (int*) ;
 int s_60 ;
 int s_61 ;
 int s_62 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_Prefix_Step3b_Noun(struct SN_env * z) {
    int among_var;
    { int c1 = z->c;
        if (!(eq_s(z, 4, s_60))) goto lab0;
        return 0;
    lab0:
        z->c = c1;
    }
    z->bra = z->c;
    if (z->c + 1 >= z->l || (z->p[z->c + 1] != 168 && z->p[z->c + 1] != 131)) return 0;
    among_var = find_among(z, a_7, 3);
    if (!(among_var)) return 0;
    z->ket = z->c;
    switch (among_var) {
        case 1:
            if (!(len_utf8(z->p) > 3)) return 0;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            if (!(len_utf8(z->p) > 3)) return 0;
            { int ret = slice_from_s(z, 2, s_61);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            if (!(len_utf8(z->p) > 3)) return 0;
            { int ret = slice_from_s(z, 2, s_62);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
