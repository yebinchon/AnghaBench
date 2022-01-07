
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* B; int lb; int c; int l; int ket; int bra; } ;


 int a_13 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int s_46 ;
 int s_47 ;
 int s_48 ;
 int s_49 ;
 int s_50 ;
 int s_51 ;
 int s_52 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_remove_plural_suffix(struct SN_env * z) {
    z->B[0] = 0;
    z->lb = z->c; z->c = z->l;

    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (!(eq_s_b(z, 18, s_46))) goto lab1;
        { int m_test2 = z->l - z->c;
            { int m3 = z->l - z->c; (void)m3;
                if (!(find_among_b(z, a_13, 6))) goto lab2;
                goto lab1;
            lab2:
                z->c = z->l - m3;
            }
            z->c = z->l - m_test2;
        }
        z->bra = z->c;
        { int ret = slice_from_s(z, 3, s_47);
            if (ret < 0) return ret;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        z->ket = z->c;
        if (!(eq_s_b(z, 15, s_48))) goto lab3;
        z->bra = z->c;
        { int ret = slice_from_s(z, 6, s_49);
            if (ret < 0) return ret;
        }
        goto lab0;
    lab3:
        z->c = z->l - m1;
        z->ket = z->c;
        if (!(eq_s_b(z, 15, s_50))) goto lab4;
        z->bra = z->c;
        { int ret = slice_from_s(z, 6, s_51);
            if (ret < 0) return ret;
        }
        goto lab0;
    lab4:
        z->c = z->l - m1;
        z->ket = z->c;
        if (!(eq_s_b(z, 9, s_52))) return 0;
        z->bra = z->c;
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
    }
lab0:
    z->B[0] = 1;
    z->c = z->lb;
    return 1;
}
