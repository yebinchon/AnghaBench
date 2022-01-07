
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int ket; scalar_t__ lb; int* p; size_t bra; } ;


 int a_2 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_adjective (struct SN_env*) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_adjectival(struct SN_env * z) {
    int among_var;
    { int ret = r_adjective(z);
        if (ret <= 0) return ret;
    }
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (z->c <= z->lb || z->p[z->c - 1] >> 5 != 6 || !((671113216 >> (z->p[z->c - 1] & 0x1f)) & 1)) { z->c = z->l - m1; goto lab0; }
        among_var = find_among_b(z, a_2, 8);
        if (!(among_var)) { z->c = z->l - m1; goto lab0; }
        z->bra = z->c;
        switch (among_var) {
            case 1:
                { int m2 = z->l - z->c; (void)m2;
                    if (z->c <= z->lb || z->p[z->c - 1] != 0xC1) goto lab2;
                    z->c--;
                    goto lab1;
                lab2:
                    z->c = z->l - m2;
                    if (z->c <= z->lb || z->p[z->c - 1] != 0xD1) { z->c = z->l - m1; goto lab0; }
                    z->c--;
                }
            lab1:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                { int ret = slice_del(z);
                    if (ret < 0) return ret;
                }
                break;
        }
    lab0:
        ;
    }
    return 1;
}
