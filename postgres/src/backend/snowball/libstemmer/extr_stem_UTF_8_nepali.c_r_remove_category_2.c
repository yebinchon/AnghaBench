
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; int l; } ;


 int a_2 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int s_2 ;
 int s_3 ;
 int s_4 ;
 int s_5 ;
 int s_6 ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_remove_category_2(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    if (z->c - 2 <= z->lb || z->p[z->c - 1] >> 5 != 4 || !((262 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
    among_var = find_among_b(z, a_2, 3);
    if (!(among_var)) return 0;
    z->bra = z->c;
    switch (among_var) {
        case 1:
            { int m1 = z->l - z->c; (void)m1;
                if (!(eq_s_b(z, 6, s_2))) goto lab1;
                goto lab0;
            lab1:
                z->c = z->l - m1;
                if (!(eq_s_b(z, 6, s_3))) goto lab2;
                goto lab0;
            lab2:
                z->c = z->l - m1;
                if (!(eq_s_b(z, 6, s_4))) goto lab3;
                goto lab0;
            lab3:
                z->c = z->l - m1;
                if (!(eq_s_b(z, 6, s_5))) return 0;
            }
        lab0:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            if (!(eq_s_b(z, 9, s_6))) return 0;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
