
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int ket; int bra; scalar_t__* S; int lb; int* p; scalar_t__* B; } ;


 int a_52 ;
 int a_53 ;
 int a_54 ;
 int a_55 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int insert_v (struct SN_env*,int,int,scalar_t__) ;
 int s_94 ;
 int s_95 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;
 void* slice_to (struct SN_env*,scalar_t__) ;

__attribute__((used)) static int r_step5g(struct SN_env * z) {
    { int m1 = z->l - z->c; (void)m1;
        z->ket = z->c;
        if (!(find_among_b(z, a_52, 3))) goto lab0;
        z->bra = z->c;
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
        z->B[0] = 0;
    lab0:
        z->c = z->l - m1;
    }
    z->ket = z->c;
    if (!(find_among_b(z, a_55, 3))) return 0;
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    z->B[0] = 0;
    { int m2 = z->l - z->c; (void)m2;
        z->ket = z->c;
        if (!(find_among_b(z, a_53, 6))) goto lab2;
        z->bra = z->c;
        z->S[0] = slice_to(z, z->S[0]);
        if (z->S[0] == 0) return -1;
        { int ret = slice_from_s(z, 4, s_94);
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
        if (z->c - 1 <= z->lb || z->p[z->c - 1] != 184) return 0;
        if (!(find_among_b(z, a_54, 5))) return 0;
        z->bra = z->c;
        if (z->c > z->lb) return 0;
        z->S[0] = slice_to(z, z->S[0]);
        if (z->S[0] == 0) return -1;
        { int ret = slice_from_s(z, 4, s_95);
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
lab1:
    return 1;
}
