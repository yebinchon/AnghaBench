
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int bra; int l; scalar_t__* S; int lb; scalar_t__* B; } ;


 int a_38 ;
 int a_39 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int g_v ;
 scalar_t__ in_grouping_b_U (struct SN_env*,int ,int,int,int ) ;
 int insert_v (struct SN_env*,int,int,scalar_t__) ;
 int s_70 ;
 int s_71 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;
 void* slice_to (struct SN_env*,scalar_t__) ;

__attribute__((used)) static int r_step4(struct SN_env * z) {
    z->ket = z->c;
    if (!(find_among_b(z, a_38, 4))) return 0;
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    z->B[0] = 0;
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (in_grouping_b_U(z, g_v, 945, 969, 0)) goto lab1;
        z->bra = z->c;
        z->S[0] = slice_to(z, z->S[0]);
        if (z->S[0] == 0) return -1;
        { int ret = slice_from_s(z, 4, s_70);
            if (ret < 0) return ret;
        }
        { int ret;
            { int saved_c = z->c;
                ret = insert_v(z, z->c, z->c, z->S[0]);
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        z->ket = z->c;
    }
lab0:
    if (!(find_among_b(z, a_39, 36))) return 0;
    z->bra = z->c;
    if (z->c > z->lb) return 0;
    z->S[0] = slice_to(z, z->S[0]);
    if (z->S[0] == 0) return -1;
    { int ret = slice_from_s(z, 4, s_71);
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
