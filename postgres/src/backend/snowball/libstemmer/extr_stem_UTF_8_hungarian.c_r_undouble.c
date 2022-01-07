
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int ket; int bra; int l; int lb; int p; } ;


 int skip_utf8 (int ,int,int ,int ,int) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_undouble(struct SN_env * z) {
    { int ret = skip_utf8(z->p, z->c, z->lb, 0, -1);
        if (ret < 0) return 0;
        z->c = ret;
    }
    z->ket = z->c;
    { int ret = skip_utf8(z->p, z->c, z->lb, z->l, - 1);
        if (ret < 0) return 0;
        z->c = ret;
    }
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
