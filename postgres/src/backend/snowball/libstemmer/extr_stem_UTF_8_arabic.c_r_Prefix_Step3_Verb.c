
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int p; int c; int ket; int bra; } ;


 int a_8 ;
 int find_among (struct SN_env*,int ,int) ;
 int len_utf8 (int ) ;
 int s_63 ;
 int s_64 ;
 int s_65 ;
 int s_66 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_Prefix_Step3_Verb(struct SN_env * z) {
    int among_var;
    z->bra = z->c;
    among_var = find_among(z, a_8, 4);
    if (!(among_var)) return 0;
    z->ket = z->c;
    switch (among_var) {
        case 1:
            if (!(len_utf8(z->p) > 4)) return 0;
            { int ret = slice_from_s(z, 2, s_63);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            if (!(len_utf8(z->p) > 4)) return 0;
            { int ret = slice_from_s(z, 2, s_64);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            if (!(len_utf8(z->p) > 4)) return 0;
            { int ret = slice_from_s(z, 2, s_65);
                if (ret < 0) return ret;
            }
            break;
        case 4:
            if (!(len_utf8(z->p) > 4)) return 0;
            { int ret = slice_from_s(z, 2, s_66);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
