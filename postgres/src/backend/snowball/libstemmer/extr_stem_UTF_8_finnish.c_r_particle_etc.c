
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {scalar_t__ c; scalar_t__* I; int lb; scalar_t__ ket; scalar_t__ bra; } ;


 int a_0 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_particle_end ;
 int in_grouping_b_U (struct SN_env*,int ,int,int,int ) ;
 int r_R2 (struct SN_env*) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_particle_etc(struct SN_env * z) {
    int among_var;

    { int mlimit1;
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c;
        among_var = find_among_b(z, a_0, 10);
        if (!(among_var)) { z->lb = mlimit1; return 0; }
        z->bra = z->c;
        z->lb = mlimit1;
    }
    switch (among_var) {
        case 1:
            if (in_grouping_b_U(z, g_particle_end, 97, 246, 0)) return 0;
            break;
        case 2:
            { int ret = r_R2(z);
                if (ret <= 0) return ret;
            }
            break;
    }
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
