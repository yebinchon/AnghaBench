
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; int lb; int ket; int* p; size_t bra; scalar_t__* S; scalar_t__* B; } ;


 int a_40 ;
 int a_41 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int insert_v (struct SN_env*,int,int,scalar_t__) ;
 int s_72 ;
 int s_73 ;
 int s_74 ;
 int s_75 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;
 scalar_t__ slice_to (struct SN_env*,scalar_t__) ;

__attribute__((used)) static int r_step5a(struct SN_env * z) {
    { int m1 = z->l - z->c; (void)m1;
        if (!(eq_s_b(z, 10, s_72))) goto lab0;
        if (z->c > z->lb) goto lab0;
        { int ret = slice_from_s(z, 8, s_73);
            if (ret < 0) return ret;
        }
    lab0:
        z->c = z->l - m1;
    }
    { int m2 = z->l - z->c; (void)m2;
        z->ket = z->c;
        if (z->c - 9 <= z->lb || z->p[z->c - 1] != 181) goto lab1;
        if (!(find_among_b(z, a_40, 5))) goto lab1;
        z->bra = z->c;
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
        z->B[0] = 0;
    lab1:
        z->c = z->l - m2;
    }
    z->ket = z->c;
    if (!(eq_s_b(z, 6, s_74))) return 0;
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    z->B[0] = 0;
    z->ket = z->c;
    if (!(find_among_b(z, a_41, 12))) return 0;
    z->bra = z->c;
    if (z->c > z->lb) return 0;
    z->S[0] = slice_to(z, z->S[0]);
    if (z->S[0] == 0) return -1;
    { int ret = slice_from_s(z, 4, s_75);
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
