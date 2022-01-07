
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {scalar_t__ c; scalar_t__* I; int lb; scalar_t__ ket; scalar_t__ bra; int l; unsigned char* p; } ;


 int a_4 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_v ;
 int out_grouping_b (struct SN_env*,int ,int,int,int ) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_verb_suffix(struct SN_env * z) {
    int among_var;

    { int mlimit1;
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c;
        among_var = find_among_b(z, a_4, 94);
        if (!(among_var)) { z->lb = mlimit1; return 0; }
        z->bra = z->c;
        switch (among_var) {
            case 1:
                { int m2 = z->l - z->c; (void)m2;
                    if (out_grouping_b(z, g_v, 97, 238, 0)) goto lab1;
                    goto lab0;
                lab1:
                    z->c = z->l - m2;
                    if (z->c <= z->lb || z->p[z->c - 1] != 'u') { z->lb = mlimit1; return 0; }
                    z->c--;
                }
            lab0:
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
        z->lb = mlimit1;
    }
    return 1;
}
