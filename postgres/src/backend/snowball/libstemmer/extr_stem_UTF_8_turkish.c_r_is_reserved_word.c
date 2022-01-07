
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int l; int c; scalar_t__ lb; } ;


 int eq_s_b (struct SN_env*,int,int ) ;
 int s_16 ;
 int s_17 ;

__attribute__((used)) static int r_is_reserved_word(struct SN_env * z) {
    if (!(eq_s_b(z, 2, s_16))) return 0;
    { int m1 = z->l - z->c; (void)m1;
        if (!(eq_s_b(z, 3, s_17))) { z->c = z->l - m1; goto lab0; }
    lab0:
        ;
    }
    if (z->c > z->lb) return 0;
    return 1;
}
