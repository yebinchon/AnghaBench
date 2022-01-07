
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {scalar_t__ c; scalar_t__* I; int lb; scalar_t__ ket; scalar_t__ bra; int l; char* p; } ;


 int a_1 ;
 int a_2 ;
 int a_3 ;
 int a_4 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int s_0 ;
 int s_1 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_possessive(struct SN_env * z) {
    int among_var;

    { int mlimit1;
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c;
        among_var = find_among_b(z, a_4, 9);
        if (!(among_var)) { z->lb = mlimit1; return 0; }
        z->bra = z->c;
        z->lb = mlimit1;
    }
    switch (among_var) {
        case 1:
            { int m2 = z->l - z->c; (void)m2;
                if (z->c <= z->lb || z->p[z->c - 1] != 'k') goto lab0;
                z->c--;
                return 0;
            lab0:
                z->c = z->l - m2;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            z->ket = z->c;
            if (!(eq_s_b(z, 3, s_0))) return 0;
            z->bra = z->c;
            { int ret = slice_from_s(z, 3, s_1);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 4:
            if (z->c - 1 <= z->lb || z->p[z->c - 1] != 97) return 0;
            if (!(find_among_b(z, a_1, 6))) return 0;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 5:
            if (z->c - 1 <= z->lb || z->p[z->c - 1] != 228) return 0;
            if (!(find_among_b(z, a_2, 6))) return 0;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 6:
            if (z->c - 2 <= z->lb || z->p[z->c - 1] != 101) return 0;
            if (!(find_among_b(z, a_3, 2))) return 0;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
