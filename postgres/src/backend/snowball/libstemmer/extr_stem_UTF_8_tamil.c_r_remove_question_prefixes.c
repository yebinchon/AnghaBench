
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int bra; int c; int ket; } ;


 int a_0 ;
 int eq_s (struct SN_env*,int,int ) ;
 int find_among (struct SN_env*,int ,int) ;
 int r_fix_va_start (struct SN_env*) ;
 int s_12 ;
 int s_13 ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_remove_question_prefixes(struct SN_env * z) {
    z->bra = z->c;
    if (!(eq_s(z, 3, s_12))) return 0;
    if (!(find_among(z, a_0, 10))) return 0;
    if (!(eq_s(z, 3, s_13))) return 0;
    z->ket = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    { int c1 = z->c;
        { int ret = r_fix_va_start(z);
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = c1;
    }
    return 1;
}
