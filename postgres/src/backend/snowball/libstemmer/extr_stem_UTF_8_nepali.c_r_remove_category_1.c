
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int bra; int l; } ;


 int a_0 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int s_0 ;
 int s_1 ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_remove_category_1(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    among_var = find_among_b(z, a_0, 17);
    if (!(among_var)) return 0;
    z->bra = z->c;
    switch (among_var) {
        case 1:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int m1 = z->l - z->c; (void)m1;
                { int m2 = z->l - z->c; (void)m2;
                    if (!(eq_s_b(z, 3, s_0))) goto lab3;
                    goto lab2;
                lab3:
                    z->c = z->l - m2;
                    if (!(eq_s_b(z, 3, s_1))) goto lab1;
                }
            lab2:
                goto lab0;
            lab1:
                z->c = z->l - m1;
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
            }
        lab0:
            break;
    }
    return 1;
}
