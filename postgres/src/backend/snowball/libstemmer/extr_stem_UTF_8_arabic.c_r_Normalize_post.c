
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int lb; int l; int ket; int* p; int bra; } ;


 int a_1 ;
 int a_2 ;
 int find_among (struct SN_env*,int ,int) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int s_50 ;
 int s_51 ;
 int s_52 ;
 int s_53 ;
 int skip_utf8 (int*,int,int ,int,int) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_Normalize_post(struct SN_env * z) {
    int among_var;
    { int c1 = z->c;
        z->lb = z->c; z->c = z->l;

        z->ket = z->c;
        if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 5 || !((124 >> (z->p[z->c - 1] & 0x1f)) & 1)) goto lab0;
        if (!(find_among_b(z, a_1, 5))) goto lab0;
        z->bra = z->c;
        { int ret = slice_from_s(z, 2, s_50);
            if (ret < 0) return ret;
        }
        z->c = z->lb;
    lab0:
        z->c = c1;
    }
    { int c2 = z->c;
        while(1) {
            int c3 = z->c;
            { int c4 = z->c;
                z->bra = z->c;
                if (z->c + 1 >= z->l || z->p[z->c + 1] >> 5 != 5 || !((124 >> (z->p[z->c + 1] & 0x1f)) & 1)) goto lab4;
                among_var = find_among(z, a_2, 5);
                if (!(among_var)) goto lab4;
                z->ket = z->c;
                switch (among_var) {
                    case 1:
                        { int ret = slice_from_s(z, 2, s_51);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 2:
                        { int ret = slice_from_s(z, 2, s_52);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 3:
                        { int ret = slice_from_s(z, 2, s_53);
                            if (ret < 0) return ret;
                        }
                        break;
                }
                goto lab3;
            lab4:
                z->c = c4;
                { int ret = skip_utf8(z->p, z->c, 0, z->l, 1);
                    if (ret < 0) goto lab2;
                    z->c = ret;
                }
            }
        lab3:
            continue;
        lab2:
            z->c = c3;
            break;
        }
        z->c = c2;
    }
    return 1;
}
