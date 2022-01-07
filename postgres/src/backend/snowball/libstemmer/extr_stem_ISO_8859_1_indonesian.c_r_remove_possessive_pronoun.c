
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; int* I; } ;


 int a_1 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_remove_possessive_pronoun(struct SN_env * z) {
    z->ket = z->c;
    if (z->c - 1 <= z->lb || (z->p[z->c - 1] != 97 && z->p[z->c - 1] != 117)) return 0;
    if (!(find_among_b(z, a_1, 3))) return 0;
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    z->I[0] -= 1;
    return 1;
}
