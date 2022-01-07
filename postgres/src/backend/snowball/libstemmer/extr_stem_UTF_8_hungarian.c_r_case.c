
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int ket; } ;


 int a_4 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_R1 (struct SN_env*) ;
 int r_v_ending (struct SN_env*) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_case(struct SN_env * z) {
    z->ket = z->c;
    if (!(find_among_b(z, a_4, 44))) return 0;
    z->bra = z->c;
    { int ret = r_R1(z);
        if (ret <= 0) return ret;
    }
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    { int ret = r_v_ending(z);
        if (ret <= 0) return ret;
    }
    return 1;
}
