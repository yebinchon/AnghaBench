
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; int l; scalar_t__* S; scalar_t__* B; } ;


 int a_24 ;
 int a_25 ;
 int a_26 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int insert_v (struct SN_env*,int,int,scalar_t__) ;
 int s_62 ;
 int s_63 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;
 void* slice_to (struct SN_env*,scalar_t__) ;

__attribute__((used)) static int r_steps9(struct SN_env * z) {
    z->ket = z->c;
    if (z->c - 7 <= z->lb || z->p[z->c - 1] >> 5 != 5 || !((-1610481664 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
    if (!(find_among_b(z, a_26, 3))) return 0;
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    z->B[0] = 0;
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (!(find_among_b(z, a_24, 4))) goto lab1;
        z->bra = z->c;
        if (z->c > z->lb) goto lab1;
        z->S[0] = slice_to(z, z->S[0]);
        if (z->S[0] == 0) return -1;
        { int ret = slice_from_s(z, 4, s_62);
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
        if (z->c - 1 <= z->lb || (z->p[z->c - 1] != 181 && z->p[z->c - 1] != 189)) return 0;
        if (!(find_among_b(z, a_25, 2))) return 0;
        z->bra = z->c;
        z->S[0] = slice_to(z, z->S[0]);
        if (z->S[0] == 0) return -1;
        { int ret = slice_from_s(z, 4, s_63);
            if (ret < 0) return ret;
        }
        { int ret;
            { int saved_c = z->c;
                ret = insert_v(z, z->c, z->c, z->S[0]);
                z->c = saved_c;
            }
            if (ret < 0) return ret;
        }
    }
lab0:
    return 1;
}
