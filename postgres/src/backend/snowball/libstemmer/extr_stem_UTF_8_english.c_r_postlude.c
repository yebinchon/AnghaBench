
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int l; char* p; size_t ket; int * B; } ;


 int s_38 ;
 int skip_utf8 (char*,int,int ,int,int) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_postlude(struct SN_env * z) {
    if (!(z->B[0])) return 0;
    while(1) {
        int c1 = z->c;
        while(1) {
            int c2 = z->c;
            z->bra = z->c;
            if (z->c == z->l || z->p[z->c] != 'Y') goto lab1;
            z->c++;
            z->ket = z->c;
            z->c = c2;
            break;
        lab1:
            z->c = c2;
            { int ret = skip_utf8(z->p, z->c, 0, z->l, 1);
                if (ret < 0) goto lab0;
                z->c = ret;
            }
        }
        { int ret = slice_from_s(z, 1, s_38);
            if (ret < 0) return ret;
        }
        continue;
    lab0:
        z->c = c1;
        break;
    }
    return 1;
}
