
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; char* p; int bra; } ;


 int r_R2 (struct SN_env*) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_Step_5b(struct SN_env * z) {
    z->ket = z->c;
    if (z->c <= z->lb || z->p[z->c - 1] != 'l') return 0;
    z->c--;
    z->bra = z->c;
    { int ret = r_R2(z);
        if (ret <= 0) return ret;
    }
    if (z->c <= z->lb || z->p[z->c - 1] != 'l') return 0;
    z->c--;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
