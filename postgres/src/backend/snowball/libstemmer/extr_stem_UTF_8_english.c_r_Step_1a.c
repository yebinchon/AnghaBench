
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int ket; int lb; int* p; size_t bra; } ;


 int a_1 ;
 int a_2 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_v ;
 int out_grouping_b_U (struct SN_env*,int ,int,int,int) ;
 int s_2 ;
 int s_3 ;
 int s_4 ;
 int skip_utf8 (int*,size_t,size_t,int,int) ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_Step_1a(struct SN_env * z) {
    int among_var;
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (z->c <= z->lb || (z->p[z->c - 1] != 39 && z->p[z->c - 1] != 115)) { z->c = z->l - m1; goto lab0; }
        if (!(find_among_b(z, a_1, 3))) { z->c = z->l - m1; goto lab0; }
        z->bra = z->c;
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
    lab0:
        ;
    }
    z->ket = z->c;
    if (z->c <= z->lb || (z->p[z->c - 1] != 100 && z->p[z->c - 1] != 115)) return 0;
    among_var = find_among_b(z, a_2, 6);
    if (!(among_var)) return 0;
    z->bra = z->c;
    switch (among_var) {
        case 1:
            { int ret = slice_from_s(z, 2, s_2);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int m2 = z->l - z->c; (void)m2;
                { int ret = skip_utf8(z->p, z->c, z->lb, z->l, - 2);
                    if (ret < 0) goto lab2;
                    z->c = ret;
                }
                { int ret = slice_from_s(z, 1, s_3);
                    if (ret < 0) return ret;
                }
                goto lab1;
            lab2:
                z->c = z->l - m2;
                { int ret = slice_from_s(z, 2, s_4);
                    if (ret < 0) return ret;
                }
            }
        lab1:
            break;
        case 3:
            { int ret = skip_utf8(z->p, z->c, z->lb, 0, -1);
                if (ret < 0) return 0;
                z->c = ret;
            }
            {
                int ret = out_grouping_b_U(z, g_v, 97, 121, 1);
                if (ret < 0) return 0;
                z->c -= ret;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
