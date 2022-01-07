
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int l; int lb; int* p; size_t bra; } ;


 int g_v ;
 scalar_t__ out_grouping_b (struct SN_env*,int ,int,int,int ) ;
 int s_32 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_un_accent(struct SN_env * z) {
    { int i = 1;
        while(1) {
            if (out_grouping_b(z, g_v, 97, 251, 0)) goto lab0;
            i--;
            continue;
        lab0:
            break;
        }
        if (i > 0) return 0;
    }
    z->ket = z->c;
    { int m1 = z->l - z->c; (void)m1;
        if (z->c <= z->lb || z->p[z->c - 1] != 0xE9) goto lab2;
        z->c--;
        goto lab1;
    lab2:
        z->c = z->l - m1;
        if (z->c <= z->lb || z->p[z->c - 1] != 0xE8) return 0;
        z->c--;
    }
lab1:
    z->bra = z->c;
    { int ret = slice_from_s(z, 1, s_32);
        if (ret < 0) return ret;
    }
    return 1;
}
