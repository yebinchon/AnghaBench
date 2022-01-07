
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; int* p; int bra; } ;


 int a_1 ;
 int a_2 ;
 int find_among_b (struct SN_env*,int ,int) ;
 int r_RV (struct SN_env*) ;
 int s_5 ;
 int s_6 ;
 int s_7 ;
 int s_8 ;
 int s_9 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_attached_pronoun(struct SN_env * z) {
    int among_var;
    z->ket = z->c;
    if (z->c - 1 <= z->lb || z->p[z->c - 1] >> 5 != 3 || !((557090 >> (z->p[z->c - 1] & 0x1f)) & 1)) return 0;
    if (!(find_among_b(z, a_1, 13))) return 0;
    z->bra = z->c;
    if (z->c - 1 <= z->lb || (z->p[z->c - 1] != 111 && z->p[z->c - 1] != 114)) return 0;
    among_var = find_among_b(z, a_2, 11);
    if (!(among_var)) return 0;
    { int ret = r_RV(z);
        if (ret <= 0) return ret;
    }
    switch (among_var) {
        case 1:
            z->bra = z->c;
            { int ret = slice_from_s(z, 5, s_5);
                if (ret < 0) return ret;
            }
            break;
        case 2:
            z->bra = z->c;
            { int ret = slice_from_s(z, 4, s_6);
                if (ret < 0) return ret;
            }
            break;
        case 3:
            z->bra = z->c;
            { int ret = slice_from_s(z, 2, s_7);
                if (ret < 0) return ret;
            }
            break;
        case 4:
            z->bra = z->c;
            { int ret = slice_from_s(z, 2, s_8);
                if (ret < 0) return ret;
            }
            break;
        case 5:
            z->bra = z->c;
            { int ret = slice_from_s(z, 2, s_9);
                if (ret < 0) return ret;
            }
            break;
        case 6:
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
        case 7:
            if (z->c <= z->lb || z->p[z->c - 1] != 'u') return 0;
            z->c--;
            { int ret = slice_del(z);
                if (ret < 0) return ret;
            }
            break;
    }
    return 1;
}
