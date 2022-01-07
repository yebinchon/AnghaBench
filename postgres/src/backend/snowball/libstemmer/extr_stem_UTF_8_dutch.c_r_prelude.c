
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int l; int* p; int ket; } ;


 int a_0 ;
 int find_among (struct SN_env*,int ,int) ;
 int g_v ;
 scalar_t__ in_grouping_U (struct SN_env*,int ,int,int,int ) ;
 int s_0 ;
 int s_1 ;
 int s_2 ;
 int s_3 ;
 int s_4 ;
 int s_5 ;
 int s_6 ;
 int s_7 ;
 int skip_utf8 (int*,int,int ,int,int) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_prelude(struct SN_env * z) {
    int among_var;
    { int c_test1 = z->c;
        while(1) {
            int c2 = z->c;
            z->bra = z->c;
            if (z->c + 1 >= z->l || z->p[z->c + 1] >> 5 != 5 || !((340306450 >> (z->p[z->c + 1] & 0x1f)) & 1)) among_var = 6; else
            among_var = find_among(z, a_0, 11);
            if (!(among_var)) goto lab0;
            z->ket = z->c;
            switch (among_var) {
                case 1:
                    { int ret = slice_from_s(z, 1, s_0);
                        if (ret < 0) return ret;
                    }
                    break;
                case 2:
                    { int ret = slice_from_s(z, 1, s_1);
                        if (ret < 0) return ret;
                    }
                    break;
                case 3:
                    { int ret = slice_from_s(z, 1, s_2);
                        if (ret < 0) return ret;
                    }
                    break;
                case 4:
                    { int ret = slice_from_s(z, 1, s_3);
                        if (ret < 0) return ret;
                    }
                    break;
                case 5:
                    { int ret = slice_from_s(z, 1, s_4);
                        if (ret < 0) return ret;
                    }
                    break;
                case 6:
                    { int ret = skip_utf8(z->p, z->c, 0, z->l, 1);
                        if (ret < 0) goto lab0;
                        z->c = ret;
                    }
                    break;
            }
            continue;
        lab0:
            z->c = c2;
            break;
        }
        z->c = c_test1;
    }
    { int c3 = z->c;
        z->bra = z->c;
        if (z->c == z->l || z->p[z->c] != 'y') { z->c = c3; goto lab1; }
        z->c++;
        z->ket = z->c;
        { int ret = slice_from_s(z, 1, s_5);
            if (ret < 0) return ret;
        }
    lab1:
        ;
    }
    while(1) {
        int c4 = z->c;
        while(1) {
            int c5 = z->c;
            if (in_grouping_U(z, g_v, 97, 232, 0)) goto lab3;
            z->bra = z->c;
            { int c6 = z->c;
                if (z->c == z->l || z->p[z->c] != 'i') goto lab5;
                z->c++;
                z->ket = z->c;
                if (in_grouping_U(z, g_v, 97, 232, 0)) goto lab5;
                { int ret = slice_from_s(z, 1, s_6);
                    if (ret < 0) return ret;
                }
                goto lab4;
            lab5:
                z->c = c6;
                if (z->c == z->l || z->p[z->c] != 'y') goto lab3;
                z->c++;
                z->ket = z->c;
                { int ret = slice_from_s(z, 1, s_7);
                    if (ret < 0) return ret;
                }
            }
        lab4:
            z->c = c5;
            break;
        lab3:
            z->c = c5;
            { int ret = skip_utf8(z->p, z->c, 0, z->l, 1);
                if (ret < 0) goto lab2;
                z->c = ret;
            }
        }
        continue;
    lab2:
        z->c = c4;
        break;
    }
    return 1;
}
