
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int ket; unsigned char* p; int l; } ;


 int eq_s (struct SN_env*,int,int ) ;
 int g_v ;
 scalar_t__ in_grouping_U (struct SN_env*,int ,int,int,int ) ;
 int s_0 ;
 int s_1 ;
 int s_2 ;
 int s_3 ;
 int skip_utf8 (unsigned char*,int,int ,int,int) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_prelude(struct SN_env * z) {
    { int c_test1 = z->c;
        while(1) {
            int c2 = z->c;
            { int c3 = z->c;
                z->bra = z->c;
                if (!(eq_s(z, 2, s_0))) goto lab2;
                z->ket = z->c;
                { int ret = slice_from_s(z, 2, s_1);
                    if (ret < 0) return ret;
                }
                goto lab1;
            lab2:
                z->c = c3;
                { int ret = skip_utf8(z->p, z->c, 0, z->l, 1);
                    if (ret < 0) goto lab0;
                    z->c = ret;
                }
            }
        lab1:
            continue;
        lab0:
            z->c = c2;
            break;
        }
        z->c = c_test1;
    }
    while(1) {
        int c4 = z->c;
        while(1) {
            int c5 = z->c;
            if (in_grouping_U(z, g_v, 97, 252, 0)) goto lab4;
            z->bra = z->c;
            { int c6 = z->c;
                if (z->c == z->l || z->p[z->c] != 'u') goto lab6;
                z->c++;
                z->ket = z->c;
                if (in_grouping_U(z, g_v, 97, 252, 0)) goto lab6;
                { int ret = slice_from_s(z, 1, s_2);
                    if (ret < 0) return ret;
                }
                goto lab5;
            lab6:
                z->c = c6;
                if (z->c == z->l || z->p[z->c] != 'y') goto lab4;
                z->c++;
                z->ket = z->c;
                if (in_grouping_U(z, g_v, 97, 252, 0)) goto lab4;
                { int ret = slice_from_s(z, 1, s_3);
                    if (ret < 0) return ret;
                }
            }
        lab5:
            z->c = c5;
            break;
        lab4:
            z->c = c5;
            { int ret = skip_utf8(z->p, z->c, 0, z->l, 1);
                if (ret < 0) goto lab3;
                z->c = ret;
            }
        }
        continue;
    lab3:
        z->c = c4;
        break;
    }
    return 1;
}
