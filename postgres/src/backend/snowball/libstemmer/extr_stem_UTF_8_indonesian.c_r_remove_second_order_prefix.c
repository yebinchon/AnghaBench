
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int bra; int c; int l; int* p; int ket; int* I; } ;


 int a_4 ;
 int find_among (struct SN_env*,int ,int) ;
 int s_5 ;
 int s_6 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_remove_second_order_prefix(struct SN_env * z) {
    int among_var;
    z->bra = z->c;
    if (z->c + 1 >= z->l || z->p[z->c + 1] != 101) return 0;
    among_var = find_among(z, a_4, 6);
    if (!(among_var)) return 0;
    z->ket = z->c;
    switch (among_var) {
        case 1:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            z->I[1] = 2;
            z->I[0] -= 1;
            break;
        case 2:
            { int ret = slice_from_s(z, 4, s_5);
                if (ret < 0) return ret;
            }
            z->I[0] -= 1;
            break;
        case 3:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            z->I[1] = 4;
            z->I[0] -= 1;
            break;
        case 4:
            { int ret = slice_from_s(z, 4, s_6);
                if (ret < 0) return ret;
            }
            z->I[1] = 4;
            z->I[0] -= 1;
            break;
    }
    return 1;
}
