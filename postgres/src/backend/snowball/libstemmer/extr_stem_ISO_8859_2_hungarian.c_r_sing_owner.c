
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int ket; } ;


 int a_10 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_R1 (struct SN_env*) ;
 int s_10 ;
 int s_11 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_sing_owner(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    among_var = find_among_b(z, a_10, 31);
    if (!(among_var)) return 0;
    z->bra = z->c;
    { int ret = r_R1(z);
        if (ret <= 0) return ret;
    }
    switch (among_var) {
        case 1:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int ret = slice_from_s(z, 1, s_10);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            { int ret = slice_from_s(z, 1, s_11);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
