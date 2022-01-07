
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {scalar_t__ c; scalar_t__* I; int lb; scalar_t__ ket; scalar_t__ bra; scalar_t__* S; } ;


 int eq_v_b (struct SN_env*,scalar_t__) ;
 int g_c ;
 scalar_t__ in_grouping_b (struct SN_env*,int ,int,int,int ) ;
 int slice_del (struct SN_env*) ;
 scalar_t__ slice_to (struct SN_env*,scalar_t__) ;

__attribute__((used)) static int r_undouble(struct SN_env * z) {

    { int mlimit1;
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c;
        if (in_grouping_b(z, g_c, 98, 122, 0)) { z->lb = mlimit1; return 0; }
        z->bra = z->c;
        z->S[0] = slice_to(z, z->S[0]);
        if (z->S[0] == 0) return -1;
        z->lb = mlimit1;
    }
    if (!(eq_v_b(z, z->S[0]))) return 0;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
