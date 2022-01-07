
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* B; int lb; int c; int l; int ket; int* p; int bra; } ;


 int a_15 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_has_min_length (struct SN_env*) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_remove_command_suffixes(struct SN_env * z) {
    { int ret = r_has_min_length(z);
        if (ret <= 0) return ret;
    }
    z->B[0] = 0;
    z->lb = z->c; z->c = z->l;

    z->ket = z->c;
    if (z->c - 5 <= z->lb || z->p[z->c - 1] != 191) return 0;
    if (!(find_among_b(z, a_15, 2))) return 0;
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    z->B[0] = 1;
    z->c = z->lb;
    return 1;
}
