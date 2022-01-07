
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int* I; int lb; int ket; int* p; int bra; int l; } ;


 int a_0 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_s_ending ;
 int g_v ;
 int in_grouping_b (struct SN_env*,int ,int,int,int ) ;
 int out_grouping_b (struct SN_env*,int ,int,int,int ) ;
 int s_0 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_main_suffix(struct SN_env * z) {
    int among_var;

    { int mlimit1;
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c;
        if (z->c <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((1851426 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->lb = mlimit1; return 0; }
        among_var = find_among_b(z, a_0, 29);
        if (!(among_var)) { z->lb = mlimit1; return 0; }
        z->bra = z->c;
        z->lb = mlimit1;
    }
    switch (among_var) {
        case 1:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int m2 = z->l - z->c; (void)m2;
                if (in_grouping_b(z, g_s_ending, 98, 122, 0)) goto lab1;
                goto lab0;
            lab1:
                z->c = z->l - m2;
                if (z->c <= z->lb || z->p[z->c - 1] != 'k') return 0;
                z->c--;
                if (out_grouping_b(z, g_v, 97, 248, 0)) return 0;
            }
        lab0:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            { int ret = slice_from_s(z, 2, s_0);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
