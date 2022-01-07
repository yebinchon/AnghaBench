
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* B; int lb; int c; int l; int ket; int bra; } ;


 int a_14 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_fix_endings (struct SN_env*) ;
 int r_has_min_length (struct SN_env*) ;
 int s_53 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_remove_question_suffixes(struct SN_env * z) {
    { int ret = r_has_min_length(z);
        if (ret <= 0) return ret;
    }
    z->B[0] = 0;
    z->lb = z->c; z->c = z->l;

    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (!(find_among_b(z, a_14, 3))) goto lab0;
        z->bra = z->c;
        { int ret = slice_from_s(z, 3, s_53);
            if (ret < 0) return ret;
        }
        z->B[0] = 1;
    lab0:
        z->c = z->l - m1;
    }
    z->c = z->lb;

    { int ret = r_fix_endings(z);
        if (ret == 0) goto lab1;
        if (ret < 0) return ret;
    }
lab1:
    return 1;
}
