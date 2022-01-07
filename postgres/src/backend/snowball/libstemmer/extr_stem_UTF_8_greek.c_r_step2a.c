
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; int l; } ;


 int a_29 ;
 int a_30 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int insert_s (struct SN_env*,int,int,int,int ) ;
 int s_65 ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_step2a(struct SN_env * z) {
    z->ket = z->c;
    if (z->c - 7 <= z->lb || (z->p[z->c - 1] != 131 && z->p[z->c - 1] != 189)) return 0;
    if (!(find_among_b(z, a_29, 2))) return 0;
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (!(find_among_b(z, a_30, 10))) goto lab0;
        z->bra = z->c;
        return 0;
    lab0:
        z->c = z->l - m1;
    }
    { int ret;
        { int saved_c = z->c;
            ret = insert_s(z, z->c, z->c, 4, s_65);
            z->c = saved_c;
        }
        if (ret < 0) return ret;
    }
    return 1;
}
