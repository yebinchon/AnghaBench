
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int ket; int bra; int* B; } ;


 int a_2 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_R1 (struct SN_env*) ;
 int s_11 ;
 int s_12 ;
 int s_13 ;
 int s_14 ;
 int s_15 ;
 int s_16 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_combo_suffix(struct SN_env * z) {
    int among_var;
    { int m_test1 = z->l - z->c;
        z->ket = z->c;
        among_var = find_among_b(z, a_2, 46);
        if (!(among_var)) return 0;
        z->bra = z->c;
        { int ret = r_R1(z);
            if (ret <= 0) return ret;
        }
        switch (among_var) {
            case 1:
                { int ret = slice_from_s(z, 4, s_11);
                    if (ret < 0) return ret;
                }
                break;
            case 2:
                { int ret = slice_from_s(z, 4, s_12);
                    if (ret < 0) return ret;
                }
                break;
            case 3:
                { int ret = slice_from_s(z, 2, s_13);
                    if (ret < 0) return ret;
                }
                break;
            case 4:
                { int ret = slice_from_s(z, 2, s_14);
                    if (ret < 0) return ret;
                }
                break;
            case 5:
                { int ret = slice_from_s(z, 2, s_15);
                    if (ret < 0) return ret;
                }
                break;
            case 6:
                { int ret = slice_from_s(z, 2, s_16);
                    if (ret < 0) return ret;
                }
                break;
        }
        z->B[0] = 1;
        z->c = z->l - m_test1;
    }
    return 1;
}
