
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; } ;


 int a_6 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_R2 (struct SN_env*) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_derivational(struct SN_env * z) {
    z->ket = z->c;
    if (z->c - 2 <= z->lb || (z->p[z->c - 1] != 212 && z->p[z->c - 1] != 216)) return 0;
    if (!(find_among_b(z, a_6, 2))) return 0;
    z->bra = z->c;
    { int ret = r_R2(z);
        if (ret <= 0) return ret;
    }
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
