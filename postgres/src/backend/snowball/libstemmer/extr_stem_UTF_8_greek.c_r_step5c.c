
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int ket; int lb; int* p; size_t bra; scalar_t__* S; scalar_t__* B; } ;


 int a_45 ;
 int a_46 ;
 int a_47 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_v2 ;
 scalar_t__ in_grouping_b_U (struct SN_env*,int ,int,int,int ) ;
 int insert_v (struct SN_env*,int,int,scalar_t__) ;
 int s_80 ;
 int s_81 ;
 int s_82 ;
 int s_83 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;
 void* slice_to (struct SN_env*,scalar_t__) ;

__attribute__((used)) static int r_step5c(struct SN_env * z) {
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (z->c - 9 <= z->lb || z->p[z->c - 1] != 181) goto lab0;
        if (!(find_among_b(z, a_45, 1))) goto lab0;
        z->bra = z->c;
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
        z->B[0] = 0;
    lab0:
        z->c = z->l - m1;
    }
    z->ket = z->c;
    if (!(eq_s_b(z, 6, s_80))) return 0;
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    z->B[0] = 0;
    { int m2 = z->l - z->c; (void)m2;
        z->ket = z->c;
        if (in_grouping_b_U(z, g_v2, 945, 969, 0)) goto lab2;
        z->bra = z->c;
        z->S[0] = slice_to(z, z->S[0]);
        if (z->S[0] == 0) return -1;
        { int ret = slice_from_s(z, 4, s_81);
            if (ret < 0) return ret;
        }
        { int ret;
            { int saved_c = z->c;
                ret = insert_v(z, z->c, z->c, z->S[0]);
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab1;
    lab2:
        z->c = z->l - m2;
        z->ket = z->c;
        if (!(find_among_b(z, a_46, 31))) goto lab3;
        z->bra = z->c;
        z->S[0] = slice_to(z, z->S[0]);
        if (z->S[0] == 0) return -1;
        { int ret = slice_from_s(z, 4, s_82);
            if (ret < 0) return ret;
        }
        { int ret;
            { int saved_c = z->c;
                ret = insert_v(z, z->c, z->c, z->S[0]);
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab1;
    lab3:
        z->c = z->l - m2;
        z->ket = z->c;
    }
lab1:
    if (!(find_among_b(z, a_47, 25))) return 0;
    z->bra = z->c;
    if (z->c > z->lb) return 0;
    z->S[0] = slice_to(z, z->S[0]);
    if (z->S[0] == 0) return -1;
    { int ret = slice_from_s(z, 4, s_83);
        if (ret < 0) return ret;
    }
    { int ret;
        { int saved_c = z->c;
            ret = insert_v(z, z->c, z->c, z->S[0]);
            z->c = saved_c;
        }
        if (ret < 0) return ret;
    }
    return 1;
}
