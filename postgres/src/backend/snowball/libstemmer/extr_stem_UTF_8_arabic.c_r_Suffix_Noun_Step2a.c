
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int p; int c; int bra; int ket; } ;


 int a_12 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int len_utf8 (int ) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_Suffix_Noun_Step2a(struct SN_env * z) {
    z->ket = z->c;
    if (!(find_among_b(z, a_12, 3))) return 0;
    z->bra = z->c;
    if (!(len_utf8(z->p) > 4)) return 0;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
