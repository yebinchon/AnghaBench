
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int ket; int bra; int * B; } ;


 int a_71 ;
 int a_72 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int s_106 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_step6(struct SN_env * z) {
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (!(find_among_b(z, a_71, 3))) goto lab0;
        z->bra = z->c;
        { int ret = slice_from_s(z, 4, s_106);
            if (ret < 0) return ret;
        }
    lab0:
        z->c = z->l - m1;
    }
    if (!(z->B[0])) return 0;
    z->ket = z->c;
    if (!(find_among_b(z, a_72, 84))) return 0;
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
