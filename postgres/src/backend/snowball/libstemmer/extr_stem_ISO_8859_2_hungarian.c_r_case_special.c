
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; } ;


 int a_5 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_R1 (struct SN_env*) ;
 int s_2 ;
 int s_3 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_case_special(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    if (z->c - 1 <= z->lb || (z->p[z->c - 1] != 110 && z->p[z->c - 1] != 116)) return 0;
    among_var = find_among_b(z, a_5, 3);
    if (!(among_var)) return 0;
    z->bra = z->c;
    { int ret = r_R1(z);
        if (ret <= 0) return ret;
    }
    switch (among_var) {
        case 1:
            { int ret = slice_from_s(z, 1, s_2);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int ret = slice_from_s(z, 1, s_3);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
