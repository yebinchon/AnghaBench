
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* B; int lb; int c; int l; int ket; int bra; } ;


 int eq_s_b (struct SN_env*,int,int ) ;
 int r_fix_ending (struct SN_env*) ;
 int r_has_min_length (struct SN_env*) ;
 int s_54 ;
 int s_55 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_remove_um(struct SN_env * z) {
    z->B[0] = 0;
    { int ret = r_has_min_length(z);
        if (ret <= 0) return ret;
    }
    z->lb = z->c; z->c = z->l;

    z->ket = z->c;
    if (!(eq_s_b(z, 9, s_54))) return 0;
    z->bra = z->c;
    { int ret = slice_from_s(z, 3, s_55);
        if (ret < 0) return ret;
    }
    z->B[0] = 1;
    z->c = z->lb;
    { int c1 = z->c;
        { int ret = r_fix_ending(z);
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = c1;
    }
    return 1;
}
