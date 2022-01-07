
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int* I; int lb; int ket; int* p; int bra; } ;


 int a_0 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_s_ending ;
 int in_grouping_b (struct SN_env*,int ,int,int,int ) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_main_suffix(struct SN_env * z) {
    int among_var;

    { int mlimit1;
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c;
        if (z->c <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((1851440 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->lb = mlimit1; return 0; }
        among_var = find_among_b(z, a_0, 32);
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
            if (in_grouping_b(z, g_s_ending, 97, 229, 0)) return 0;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
