
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int l; unsigned char* p; size_t ket; } ;


 int g_v ;
 scalar_t__ in_grouping (struct SN_env*,int ,int,int,int ) ;
 int s_0 ;
 int s_1 ;
 int s_2 ;
 int s_3 ;
 int s_4 ;
 int s_5 ;
 int s_6 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_prelude(struct SN_env * z) {
    while(1) {
        int c1 = z->c;
        while(1) {
            int c2 = z->c;
            { int c3 = z->c;
                if (in_grouping(z, g_v, 97, 251, 0)) goto lab3;
                z->bra = z->c;
                { int c4 = z->c;
                    if (z->c == z->l || z->p[z->c] != 'u') goto lab5;
                    z->c++;
                    z->ket = z->c;
                    if (in_grouping(z, g_v, 97, 251, 0)) goto lab5;
                    { int ret = slice_from_s(z, 1, s_0);
                        if (ret < 0) return ret;
                    }
                    goto lab4;
                lab5:
                    z->c = c4;
                    if (z->c == z->l || z->p[z->c] != 'i') goto lab6;
                    z->c++;
                    z->ket = z->c;
                    if (in_grouping(z, g_v, 97, 251, 0)) goto lab6;
                    { int ret = slice_from_s(z, 1, s_1);
                        if (ret < 0) return ret;
                    }
                    goto lab4;
                lab6:
                    z->c = c4;
                    if (z->c == z->l || z->p[z->c] != 'y') goto lab3;
                    z->c++;
                    z->ket = z->c;
                    { int ret = slice_from_s(z, 1, s_2);
                        if (ret < 0) return ret;
                    }
                }
            lab4:
                goto lab2;
            lab3:
                z->c = c3;
                z->bra = z->c;
                if (z->c == z->l || z->p[z->c] != 0xEB) goto lab7;
                z->c++;
                z->ket = z->c;
                { int ret = slice_from_s(z, 2, s_3);
                    if (ret < 0) return ret;
                }
                goto lab2;
            lab7:
                z->c = c3;
                z->bra = z->c;
                if (z->c == z->l || z->p[z->c] != 0xEF) goto lab8;
                z->c++;
                z->ket = z->c;
                { int ret = slice_from_s(z, 2, s_4);
                    if (ret < 0) return ret;
                }
                goto lab2;
            lab8:
                z->c = c3;
                z->bra = z->c;
                if (z->c == z->l || z->p[z->c] != 'y') goto lab9;
                z->c++;
                z->ket = z->c;
                if (in_grouping(z, g_v, 97, 251, 0)) goto lab9;
                { int ret = slice_from_s(z, 1, s_5);
                    if (ret < 0) return ret;
                }
                goto lab2;
            lab9:
                z->c = c3;
                if (z->c == z->l || z->p[z->c] != 'q') goto lab1;
                z->c++;
                z->bra = z->c;
                if (z->c == z->l || z->p[z->c] != 'u') goto lab1;
                z->c++;
                z->ket = z->c;
                { int ret = slice_from_s(z, 1, s_6);
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
