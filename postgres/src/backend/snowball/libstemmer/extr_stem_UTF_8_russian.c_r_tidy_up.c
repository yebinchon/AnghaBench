
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int ket; } ;


 int a_7 ;
 int eq_s_b (struct SN_env*,int,int ) ;
 int find_among_b (struct SN_env*,int ,int) ;
 int s_6 ;
 int s_7 ;
 int s_8 ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_tidy_up(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    among_var = find_among_b(z, a_7, 4);
    if (!(among_var)) return 0;
    z->bra = z->c;
    switch (among_var) {
        case 1:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            z->ket = z->c;
            if (!(eq_s_b(z, 2, s_6))) return 0;
            z->bra = z->c;
            if (!(eq_s_b(z, 2, s_7))) return 0;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            if (!(eq_s_b(z, 2, s_8))) return 0;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
