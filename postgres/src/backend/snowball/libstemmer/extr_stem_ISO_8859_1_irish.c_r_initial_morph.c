
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int ket; int bra; } ;


 int a_0 ;
 int find_among (struct SN_env*,int ,int) ;
 int s_0 ;
 int s_1 ;
 int s_2 ;
 int s_3 ;
 int s_4 ;
 int s_5 ;
 int s_6 ;
 int s_7 ;
 int s_8 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_initial_morph(struct SN_env * z) {
    int among_var;
    z->bra = z->c;
    among_var = find_among(z, a_0, 24);
    if (!(among_var)) return 0;
    z->ket = z->c;
    switch (among_var) {
        case 1:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            { int ret = slice_from_s(z, 1, s_0);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            { int ret = slice_from_s(z, 1, s_1);
                if (ret < 0) return ret;
            }
            break;
        case 4:
            { int ret = slice_from_s(z, 1, s_2);
                if (ret < 0) return ret;
            }
            break;
        case 5:
            { int ret = slice_from_s(z, 1, s_3);
                if (ret < 0) return ret;
            }
            break;
        case 6:
            { int ret = slice_from_s(z, 1, s_4);
                if (ret < 0) return ret;
            }
            break;
        case 7:
            { int ret = slice_from_s(z, 1, s_5);
                if (ret < 0) return ret;
            }
            break;
        case 8:
            { int ret = slice_from_s(z, 1, s_6);
                if (ret < 0) return ret;
            }
            break;
        case 9:
            { int ret = slice_from_s(z, 1, s_7);
                if (ret < 0) return ret;
            }
            break;
        case 10:
            { int ret = slice_from_s(z, 1, s_8);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
