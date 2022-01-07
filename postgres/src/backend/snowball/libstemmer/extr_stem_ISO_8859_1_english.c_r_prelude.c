
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* B; int c; int bra; int l; char* p; size_t ket; } ;


 int g_v ;
 scalar_t__ in_grouping (struct SN_env*,int ,int,int,int ) ;
 int s_0 ;
 int s_1 ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_prelude(struct SN_env * z) {
    z->B[0] = 0;
    { int c1 = z->c;
        z->bra = z->c;
        if (z->c == z->l || z->p[z->c] != '\'') goto lab0;
        z->c++;
        z->ket = z->c;
        { int ret = slice_del(z);
            if (ret < 0) return ret;
        }
    lab0:
        z->c = c1;
    }
    { int c2 = z->c;
        z->bra = z->c;
        if (z->c == z->l || z->p[z->c] != 'y') goto lab1;
        z->c++;
        z->ket = z->c;
        { int ret = slice_from_s(z, 1, s_0);
            if (ret < 0) return ret;
        }
        z->B[0] = 1;
    lab1:
        z->c = c2;
    }
    { int c3 = z->c;
        while(1) {
            int c4 = z->c;
            while(1) {
                int c5 = z->c;
                if (in_grouping(z, g_v, 97, 121, 0)) goto lab4;
                z->bra = z->c;
                if (z->c == z->l || z->p[z->c] != 'y') goto lab4;
                z->c++;
                z->ket = z->c;
                z->c = c5;
                break;
            lab4:
                z->c = c5;
                if (z->c >= z->l) goto lab3;
                z->c++;
            }
            { int ret = slice_from_s(z, 1, s_1);
                if (ret < 0) return ret;
            }
            z->B[0] = 1;
            continue;
        lab3:
            z->c = c4;
            break;
        }
        z->c = c3;
    }
    return 1;
}
