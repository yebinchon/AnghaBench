
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int ket; int c; int lb; char* p; int bra; int l; } ;


 int r_R1 (struct SN_env*) ;
 int r_R2 (struct SN_env*) ;
 int r_shortv (struct SN_env*) ;
 int slice_del (struct SN_env*) ;

__attribute__((used)) static int r_Step_5a(struct SN_env * z) {
    z->ket = z->c;
    if (z->c <= z->lb || z->p[z->c - 1] != 'e') return 0;
    z->c--;
    z->bra = z->c;
    { int m1 = z->l - z->c; (void)m1;
        { int ret = r_R2(z);
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
        goto lab0;
    lab1:
        z->c = z->l - m1;
        { int ret = r_R1(z);
            if (ret <= 0) return ret;
        }
        { int m2 = z->l - z->c; (void)m2;
            { int ret = r_shortv(z);
                if (ret == 0) goto lab2;
                if (ret < 0) return ret;
            }
            return 0;
        lab2:
            z->c = z->l - m2;
        }
    }
lab0:
    { int ret = slice_del(z);
        if (ret < 0) return ret;
    }
    return 1;
}
