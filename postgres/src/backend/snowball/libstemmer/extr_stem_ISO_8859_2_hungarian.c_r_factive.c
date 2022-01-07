
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; } ;


 int a_7 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_R1 (struct SN_env*) ;
 int r_double (struct SN_env*) ;
 int r_undouble (struct SN_env*) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_factive(struct SN_env * z) {
    z->ket = z->c;
    if (z->c <= z->lb || (z->p[z->c - 1] != 225 && z->p[z->c - 1] != 233)) return 0;
    if (!(find_among_b(z, a_7, 2))) return 0;
    z->bra = z->c;
    { int ret = r_R1(z);
        if (ret <= 0) return ret;
    }
    { int ret = r_double(z);
        if (ret <= 0) return ret;
    }
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    { int ret = r_undouble(z);
        if (ret <= 0) return ret;
    }
    return 1;
}
