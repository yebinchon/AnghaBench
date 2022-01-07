
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int l; int lb; char* p; size_t bra; } ;


 int g_v ;
 int out_grouping_b (struct SN_env*,int ,int,int,int) ;
 int s_5 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_Step_1c(struct SN_env * z) {
    z->ket = z->c;
    { int m1 = z->l - z->c; (void)m1;
        if (z->c <= z->lb || z->p[z->c - 1] != 'y') goto lab1;
        z->c--;
        goto lab0;
    lab1:
        z->c = z->l - m1;
        if (z->c <= z->lb || z->p[z->c - 1] != 'Y') return 0;
        z->c--;
    }
lab0:
    z->bra = z->c;
    {
        int ret = out_grouping_b(z, g_v, 97, 121, 1);
        if (ret < 0) return 0;
        z->c -= ret;
    }
    { int ret = slice_from_s(z, 1, s_5);
        if (ret < 0) return ret;
    }
    return 1;
}
