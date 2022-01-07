
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; } ;


 int eq_s_b (struct SN_env*,int,int ) ;
 int g_v ;
 scalar_t__ out_grouping_b (struct SN_env*,int ,int,int,int ) ;
 int r_R1 (struct SN_env*) ;
 int r_undouble (struct SN_env*) ;
 int s_10 ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_en_ending(struct SN_env * z) {
    { int ret = r_R1(z);
        if (ret <= 0) return ret;
    }
    { int m1 = z->l - z->c; (void)m1;
        if (out_grouping_b(z, g_v, 97, 232, 0)) return 0;
        z->c = z->l - m1;
        { int m2 = z->l - z->c; (void)m2;
            if (!(eq_s_b(z, 3, s_10))) goto lab0;
            return 0;
        lab0:
            z->c = z->l - m2;
        }
    }
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    { int ret = r_undouble(z);
        if (ret <= 0) return ret;
    }
    return 1;
}
