
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; } ;


 int a_73 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_step7(struct SN_env * z) {
    z->ket = z->c;
    if (z->c - 7 <= z->lb || (z->p[z->c - 1] != 129 && z->p[z->c - 1] != 132)) return 0;
    if (!(find_among_b(z, a_73, 8))) return 0;
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
