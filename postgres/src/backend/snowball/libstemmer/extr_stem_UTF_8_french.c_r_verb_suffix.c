
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {scalar_t__ c; scalar_t__* I; int lb; scalar_t__ ket; scalar_t__ bra; int l; char* p; } ;


 int a_6 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_R2 (struct SN_env*) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_verb_suffix(struct SN_env * z) {
    int among_var;

    { int mlimit1;
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c;
        among_var = find_among_b(z, a_6, 38);
        if (!(among_var)) { z->lb = mlimit1; return 0; }
        z->bra = z->c;
        switch (among_var) {
            case 1:
                { int ret = r_R2(z);
                    if (ret == 0) { z->lb = mlimit1; return 0; }
                    if (ret < 0) return ret;
                }
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                { int m2 = z->l - z->c; (void)m2;
                    z->ket = z->c;
                    if (z->c <= z->lb || z->p[z->c - 1] != 'e') { z->c = z->l - m2; goto lab0; }
                    z->c--;
                    z->bra = z->c;
                    { int ret = slice_del(z);
                        if (ret < 0) return ret;
                    }
                lab0:
                    ;
                }
                break;
        }
        z->lb = mlimit1;
    }
    return 1;
}
