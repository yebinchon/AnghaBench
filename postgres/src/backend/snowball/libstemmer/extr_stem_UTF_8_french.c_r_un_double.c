
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; scalar_t__ lb; int* p; size_t ket; int bra; } ;


 int a_8 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int skip_utf8 (int*,size_t,scalar_t__,int ,int) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_un_double(struct SN_env * z) {
    { int m_test1 = z->l - z->c;
        if (z->c - 2 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((1069056 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
        if (!(find_among_b(z, a_8, 5))) return 0;
        z->c = z->l - m_test1;
    }
    z->ket = z->c;
    { int ret = skip_utf8(z->p, z->c, z->lb, 0, -1);
        if (ret < 0) return 0;
        z->c = ret;
    }
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
