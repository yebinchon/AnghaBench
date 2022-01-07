
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int lb; int ket; int l; int bra; } ;


 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_undouble(struct SN_env * z) {
    if (z->c <= z->lb) return 0;
    z->c--;
    z->ket = z->c;
    { int ret = z->c - 1;
        if (z->lb > ret || ret > z->l) return 0;
        z->c = ret;
    }
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
