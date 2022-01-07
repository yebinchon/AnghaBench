
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; int* I; int l; } ;


 int a_3 ;
 int a_4 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_v ;
 int insert_s (struct SN_env*,int,int,int,int ) ;
 int out_grouping_b (struct SN_env*,int ,int,int,int) ;
 int r_R1 (struct SN_env*) ;
 int r_shortv (struct SN_env*) ;
 int s_5 ;
 int s_6 ;
 int s_7 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_Step_1b(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((33554576 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
    among_var = find_among_b(z, a_4, 6);
    if (!(among_var)) return 0;
    z->bra = z->c;
    switch (among_var) {
        case 1:
            { int ret = r_R1(z);
                if (ret <= 0) return ret;
            }
            { int ret = slice_from_s(z, 2, s_5);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int m_test1 = z->l - z->c;
                {
                    int ret = out_grouping_b(z, g_v, 97, 121, 1);
                    if (ret < 0) return 0;
                    z->c -= ret;
                }
                z->c = z->l - m_test1;
            }
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            { int m_test2 = z->l - z->c;
                if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((68514004 >> (z->p[z->c - 1] & 0x1f)) & 1)) among_var = 3; else
                among_var = find_among_b(z, a_3, 13);
                if (!(among_var)) return 0;
                z->c = z->l - m_test2;
            }
            switch (among_var) {
                case 1:
                    { int ret;
                        { int saved_c = z->c;
                            ret = insert_s(z, z->c, z->c, 1, s_6);
                            z->c = saved_c;
                        }
                        if (ret < 0) return ret;
                    }
                    break;
                case 2:
                    z->ket = z->c;
                    if (z->c <= z->lb) return 0;
                    z->c--;
                    z->bra = z->c;
                    { int ret = slice_del(z);
                        if (ret < 0) return ret;
                    }
                    break;
                case 3:
                    if (z->c != z->I[0]) return 0;
                    { int m_test3 = z->l - z->c;
                        { int ret = r_shortv(z);
                            if (ret <= 0) return ret;
                        }
                        z->c = z->l - m_test3;
                    }
                    { int ret;
                        { int saved_c = z->c;
                            ret = insert_s(z, z->c, z->c, 1, s_7);
                            z->c = saved_c;
                        }
                        if (ret < 0) return ret;
                    }
                    break;
            }
            break;
    }
    return 1;
}
