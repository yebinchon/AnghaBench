
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int* I; int lb; int ket; char* p; int bra; int l; } ;


 int a_9 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_V1 ;
 scalar_t__ in_grouping_b_U (struct SN_env*,int ,int,int,int ) ;
 int s_6 ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_t_plural(struct SN_env * z) {
    int among_var;

    { int mlimit1;
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c;
        if (z->c <= z->lb || z->p[z->c - 1] != 't') { z->lb = mlimit1; return 0; }
        z->c--;
        z->bra = z->c;
        { int m_test2 = z->l - z->c;
            if (in_grouping_b_U(z, g_V1, 97, 246, 0)) { z->lb = mlimit1; return 0; }
            z->c = z->l - m_test2;
        }
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
        z->lb = mlimit1;
    }

    { int mlimit3;
        if (z->c < z->I[1]) return 0;
        mlimit3 = z->lb; z->lb = z->I[1];
        z->ket = z->c;
        if (z->c - 2 <= z->lb || z->p[z->c - 1] != 97) { z->lb = mlimit3; return 0; }
        among_var = find_among_b(z, a_9, 2);
        if (!(among_var)) { z->lb = mlimit3; return 0; }
        z->bra = z->c;
        z->lb = mlimit3;
    }
    switch (among_var) {
        case 1:
            { int m4 = z->l - z->c; (void)m4;
                if (!(eq_s_b(z, 2, s_6))) goto lab0;
                return 0;
            lab0:
                z->c = z->l - m4;
            }
            break;
    }
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
