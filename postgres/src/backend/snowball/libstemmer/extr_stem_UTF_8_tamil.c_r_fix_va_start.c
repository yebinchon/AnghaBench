
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int ket; } ;


 int eq_s (struct SN_env*,int,int ) ;
 int s_0 ;
 int s_1 ;
 int s_10 ;
 int s_11 ;
 int s_2 ;
 int s_3 ;
 int s_4 ;
 int s_5 ;
 int s_6 ;
 int s_7 ;
 int s_8 ;
 int s_9 ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_fix_va_start(struct SN_env * z) {
    { int c1 = z->c;
        { int c2 = z->c;
            { int c3 = z->c;
                if (!(eq_s(z, 6, s_0))) { z->c = c3; goto lab2; }
            lab2:
                ;
            }
            z->c = c2;
            z->bra = z->c;
        }
        if (!(eq_s(z, 6, s_1))) goto lab1;
        z->ket = z->c;
        { int ret = slice_from_s(z, 3, s_2);
            if (ret < 0) return ret;
        }
        goto lab0;
    lab1:
        z->c = c1;
        { int c4 = z->c;
            { int c5 = z->c;
                if (!(eq_s(z, 6, s_3))) { z->c = c5; goto lab4; }
            lab4:
                ;
            }
            z->c = c4;
            z->bra = z->c;
        }
        if (!(eq_s(z, 6, s_4))) goto lab3;
        z->ket = z->c;
        { int ret = slice_from_s(z, 3, s_5);
            if (ret < 0) return ret;
        }
        goto lab0;
    lab3:
        z->c = c1;
        { int c6 = z->c;
            { int c7 = z->c;
                if (!(eq_s(z, 6, s_6))) { z->c = c7; goto lab6; }
            lab6:
                ;
            }
            z->c = c6;
            z->bra = z->c;
        }
        if (!(eq_s(z, 6, s_7))) goto lab5;
        z->ket = z->c;
        { int ret = slice_from_s(z, 3, s_8);
            if (ret < 0) return ret;
        }
        goto lab0;
    lab5:
        z->c = c1;
        { int c8 = z->c;
            { int c9 = z->c;
                if (!(eq_s(z, 6, s_9))) { z->c = c9; goto lab7; }
            lab7:
                ;
            }
            z->c = c8;
            z->bra = z->c;
        }
        if (!(eq_s(z, 6, s_10))) return 0;
        z->ket = z->c;
        { int ret = slice_from_s(z, 3, s_11);
            if (ret < 0) return ret;
        }
    }
lab0:
    return 1;
}
