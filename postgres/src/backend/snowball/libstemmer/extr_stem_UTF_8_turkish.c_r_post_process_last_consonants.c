
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int ket; } ;


 int a_23 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int s_5 ;
 int s_6 ;
 int s_7 ;
 int s_8 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_post_process_last_consonants(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    among_var = find_among_b(z, a_23, 4);
    if (!(among_var)) return 0;
    z->bra = z->c;
    switch (among_var) {
        case 1:
            { int ret = slice_from_s(z, 1, s_5);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int ret = slice_from_s(z, 2, s_6);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            { int ret = slice_from_s(z, 1, s_7);
                if (ret < 0) return ret;
            }
            break;
        case 4:
            { int ret = slice_from_s(z, 1, s_8);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
