
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; scalar_t__* S; scalar_t__* B; } ;


 int a_19 ;
 int a_20 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int insert_v (struct SN_env*,int,int,scalar_t__) ;
 int s_57 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;
 scalar_t__ slice_to (struct SN_env*,scalar_t__) ;

__attribute__((used)) static int r_steps7(struct SN_env * z) {
    z->ket = z->c;
    if (z->c - 9 <= z->lb || (z->p[z->c - 1] != 177 && z->p[z->c - 1] != 185)) return 0;
    if (!(find_among_b(z, a_20, 4))) return 0;
    z->bra = z->c;
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    z->B[0] = 0;
    z->ket = z->c;
    if (z->c - 1 <= z->lb || (z->p[z->c - 1] != 131 && z->p[z->c - 1] != 135)) return 0;
    if (!(find_among_b(z, a_19, 2))) return 0;
    z->bra = z->c;
    if (z->c > z->lb) return 0;
    z->S[0] = slice_to(z, z->S[0]);
    if (z->S[0] == 0) return -1;
    { int ret = slice_from_s(z, 8, s_57);
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
