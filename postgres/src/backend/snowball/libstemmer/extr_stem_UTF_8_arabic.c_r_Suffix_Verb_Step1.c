
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int p; int c; int bra; int ket; } ;


 int a_17 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int len_utf8 (int ) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_Suffix_Verb_Step1(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    among_var = find_among_b(z, a_17, 12);
    if (!(among_var)) return 0;
    z->bra = z->c;
    switch (among_var) {
        case 1:
            if (!(len_utf8(z->p) >= 4)) return 0;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            if (!(len_utf8(z->p) >= 5)) return 0;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            if (!(len_utf8(z->p) >= 6)) return 0;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
