
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* B; int c; int bra; int l; char* p; size_t ket; int* I; int lb; } ;


 int g_v ;
 int in_grouping (struct SN_env*,int ,int,int,int) ;
 int out_grouping (struct SN_env*,int ,int,int,int) ;
 int r_Step_1a (struct SN_env*) ;
 int r_Step_1b (struct SN_env*) ;
 int r_Step_1c (struct SN_env*) ;
 int r_Step_2 (struct SN_env*) ;
 int r_Step_3 (struct SN_env*) ;
 int r_Step_4 (struct SN_env*) ;
 int r_Step_5a (struct SN_env*) ;
 int r_Step_5b (struct SN_env*) ;
 int s_21 ;
 int s_22 ;
 int s_23 ;
 int slice_from_s (struct SN_env*,int,int ) ;

extern int porter_ISO_8859_1_stem(struct SN_env * z) {
    z->B[0] = 0;
    { int c1 = z->c;
        z->bra = z->c;
        if (z->c == z->l || z->p[z->c] != 'y') goto lab0;
        z->c++;
        z->ket = z->c;
        { int ret = slice_from_s(z, 1, s_21);
            if (ret < 0) return ret;
        }
        z->B[0] = 1;
    lab0:
        z->c = c1;
    }
    { int c2 = z->c;
        while(1) {
            int c3 = z->c;
            while(1) {
                int c4 = z->c;
                if (in_grouping(z, g_v, 97, 121, 0)) goto lab3;
                z->bra = z->c;
                if (z->c == z->l || z->p[z->c] != 'y') goto lab3;
                z->c++;
                z->ket = z->c;
                z->c = c4;
                break;
            lab3:
                z->c = c4;
                if (z->c >= z->l) goto lab2;
                z->c++;
            }
            { int ret = slice_from_s(z, 1, s_22);
                if (ret < 0) return ret;
            }
            z->B[0] = 1;
            continue;
        lab2:
            z->c = c3;
            break;
        }
        z->c = c2;
    }
    z->I[0] = z->l;
    z->I[1] = z->l;
    { int c5 = z->c;
        {
            int ret = out_grouping(z, g_v, 97, 121, 1);
            if (ret < 0) goto lab4;
            z->c += ret;
        }
        {
            int ret = in_grouping(z, g_v, 97, 121, 1);
            if (ret < 0) goto lab4;
            z->c += ret;
        }
        z->I[0] = z->c;
        {
            int ret = out_grouping(z, g_v, 97, 121, 1);
            if (ret < 0) goto lab4;
            z->c += ret;
        }
        {
            int ret = in_grouping(z, g_v, 97, 121, 1);
            if (ret < 0) goto lab4;
            z->c += ret;
        }
        z->I[1] = z->c;
    lab4:
        z->c = c5;
    }
    z->lb = z->c; z->c = z->l;

    { int m6 = z->l - z->c; (void)m6;
        { int ret = r_Step_1a(z);
            if (ret == 0) goto lab5;
            if (ret < 0) return ret;
        }
    lab5:
        z->c = z->l - m6;
    }
    { int m7 = z->l - z->c; (void)m7;
        { int ret = r_Step_1b(z);
            if (ret == 0) goto lab6;
            if (ret < 0) return ret;
        }
    lab6:
        z->c = z->l - m7;
    }
    { int m8 = z->l - z->c; (void)m8;
        { int ret = r_Step_1c(z);
            if (ret == 0) goto lab7;
            if (ret < 0) return ret;
        }
    lab7:
        z->c = z->l - m8;
    }
    { int m9 = z->l - z->c; (void)m9;
        { int ret = r_Step_2(z);
            if (ret == 0) goto lab8;
            if (ret < 0) return ret;
        }
    lab8:
        z->c = z->l - m9;
    }
    { int m10 = z->l - z->c; (void)m10;
        { int ret = r_Step_3(z);
            if (ret == 0) goto lab9;
            if (ret < 0) return ret;
        }
    lab9:
        z->c = z->l - m10;
    }
    { int m11 = z->l - z->c; (void)m11;
        { int ret = r_Step_4(z);
            if (ret == 0) goto lab10;
            if (ret < 0) return ret;
        }
    lab10:
        z->c = z->l - m11;
    }
    { int m12 = z->l - z->c; (void)m12;
        { int ret = r_Step_5a(z);
            if (ret == 0) goto lab11;
            if (ret < 0) return ret;
        }
    lab11:
        z->c = z->l - m12;
    }
    { int m13 = z->l - z->c; (void)m13;
        { int ret = r_Step_5b(z);
            if (ret == 0) goto lab12;
            if (ret < 0) return ret;
        }
    lab12:
        z->c = z->l - m13;
    }
    z->c = z->lb;
    { int c14 = z->c;
        if (!(z->B[0])) goto lab13;
        while(1) {
            int c15 = z->c;
            while(1) {
                int c16 = z->c;
                z->bra = z->c;
                if (z->c == z->l || z->p[z->c] != 'Y') goto lab15;
                z->c++;
                z->ket = z->c;
                z->c = c16;
                break;
            lab15:
                z->c = c16;
                if (z->c >= z->l) goto lab14;
                z->c++;
            }
            { int ret = slice_from_s(z, 1, s_23);
                if (ret < 0) return ret;
            }
            continue;
        lab14:
            z->c = c15;
            break;
        }
    lab13:
        z->c = c14;
    }
    return 1;
}
