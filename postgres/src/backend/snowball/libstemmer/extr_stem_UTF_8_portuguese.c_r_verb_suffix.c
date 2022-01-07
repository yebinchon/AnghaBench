
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {scalar_t__ c; scalar_t__* I; int lb; scalar_t__ ket; scalar_t__ bra; } ;


 int a_6 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_verb_suffix(struct SN_env * z) {

    { int mlimit1;
        if (z->c < z->I[0]) return 0;
        mlimit1 = z->lb; z->lb = z->I[0];
        z->ket = z->c;
        if (!(find_among_b(z, a_6, 120))) { z->lb = mlimit1; return 0; }
        z->bra = z->c;
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
        z->lb = mlimit1;
    }
    return 1;
}
