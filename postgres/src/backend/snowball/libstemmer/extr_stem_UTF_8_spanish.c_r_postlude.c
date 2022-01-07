
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int l; int* p; int ket; } ;


 int a_0 ;
 int find_among (struct SN_env*,int ,int) ;
 int s_0 ;
 int s_1 ;
 int s_2 ;
 int s_3 ;
 int s_4 ;
 int skip_utf8 (int*,int,int ,int,int) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_postlude(struct SN_env * z) {
    int among_var;
    while(1) {
        int c1 = z->c;
        z->bra = z->c;
        if (z->c + 1 >= z->l || z->p[z->c + 1] >> 5 != 5 || !((67641858 >> (z->p[z->c + 1] & 0x1f)) & 1)) among_var = 6; else
        among_var = find_among(z, a_0, 6);
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
        z->c = c1;
        break;
    }
    return 1;
}
