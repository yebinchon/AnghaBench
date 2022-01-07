
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int l; unsigned char* p; size_t ket; } ;


 int g_v ;
 scalar_t__ in_grouping (struct SN_env*,int ,int,int,int ) ;
 int s_0 ;
 int s_1 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_prelude(struct SN_env * z) {
    while(1) {
        int c1 = z->c;
        while(1) {
            int c2 = z->c;
            if (in_grouping(z, g_v, 97, 238, 0)) goto lab1;
            z->bra = z->c;
            { int c3 = z->c;
                if (z->c == z->l || z->p[z->c] != 'u') goto lab3;
                z->c++;
                z->ket = z->c;
                if (in_grouping(z, g_v, 97, 238, 0)) goto lab3;
                { int ret = slice_from_s(z, 1, s_0);
                    if (ret < 0) return ret;
                }
                goto lab2;
            lab3:
                z->c = c3;
                if (z->c == z->l || z->p[z->c] != 'i') goto lab1;
                z->c++;
                z->ket = z->c;
                if (in_grouping(z, g_v, 97, 238, 0)) goto lab1;
                { int ret = slice_from_s(z, 1, s_1);
                    if (ret < 0) return ret;
                }
            }
        lab2:
            z->c = c2;
            break;
        lab1:
            z->c = c2;
            if (z->c >= z->l) goto lab0;
            z->c++;
        }
        continue;
    lab0:
        z->c = c1;
        break;
    }
    return 1;
}
