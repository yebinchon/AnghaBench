
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* B; int l; int c; int ket; int bra; } ;


 int a_3 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_R2 (struct SN_env*) ;
 int r_combo_suffix (struct SN_env*) ;
 int s_17 ;
 int s_18 ;
 int s_19 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_standard_suffix(struct SN_env * z) {
    int among_var;
    z->B[0] = 0;
    while(1) {
        int m1 = z->l - z->c; (void)m1;
        { int ret = r_combo_suffix(z);
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
        continue;
    lab0:
        z->c = z->l - m1;
        break;
    }
    z->ket = z->c;
    among_var = find_among_b(z, a_3, 62);
    if (!(among_var)) return 0;
    z->bra = z->c;
    { int ret = r_R2(z);
        if (ret <= 0) return ret;
    }
    switch (among_var) {
        case 1:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            if (!(eq_s_b(z, 2, s_17))) return 0;
            z->bra = z->c;
            { int ret = slice_from_s(z, 1, s_18);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            { int ret = slice_from_s(z, 3, s_19);
                if (ret < 0) return ret;
            }
            break;
    }
    z->B[0] = 1;
    return 1;
}
