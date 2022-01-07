
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int ket; int bra; } ;


 int a_2 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_adjective (struct SN_env*) ;
 int s_2 ;
 int s_3 ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_adjectival(struct SN_env * z) {
    int among_var;
    { int ret = r_adjective(z);
        if (ret <= 0) return ret;
    }
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        among_var = find_among_b(z, a_2, 8);
        if (!(among_var)) { z->c = z->l - m1; goto lab0; }
        z->bra = z->c;
        switch (among_var) {
            case 1:
                { int m2 = z->l - z->c; (void)m2;
                    if (!(eq_s_b(z, 2, s_2))) goto lab2;
                    goto lab1;
                lab2:
                    z->c = z->l - m2;
                    if (!(eq_s_b(z, 2, s_3))) { z->c = z->l - m1; goto lab0; }
                }
            lab1:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
        }
    lab0:
        ;
    }
    return 1;
}
