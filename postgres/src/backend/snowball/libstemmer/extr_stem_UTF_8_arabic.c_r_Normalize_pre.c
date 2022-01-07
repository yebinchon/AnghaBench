
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int c; int bra; int ket; int l; int p; } ;


 int a_0 ;
 int find_among (struct SN_env*,int ,int) ;
 int s_0 ;
 int s_1 ;
 int s_10 ;
 int s_11 ;
 int s_12 ;
 int s_13 ;
 int s_14 ;
 int s_15 ;
 int s_16 ;
 int s_17 ;
 int s_18 ;
 int s_19 ;
 int s_2 ;
 int s_20 ;
 int s_21 ;
 int s_22 ;
 int s_23 ;
 int s_24 ;
 int s_25 ;
 int s_26 ;
 int s_27 ;
 int s_28 ;
 int s_29 ;
 int s_3 ;
 int s_30 ;
 int s_31 ;
 int s_32 ;
 int s_33 ;
 int s_34 ;
 int s_35 ;
 int s_36 ;
 int s_37 ;
 int s_38 ;
 int s_39 ;
 int s_4 ;
 int s_40 ;
 int s_41 ;
 int s_42 ;
 int s_43 ;
 int s_44 ;
 int s_45 ;
 int s_46 ;
 int s_47 ;
 int s_48 ;
 int s_49 ;
 int s_5 ;
 int s_6 ;
 int s_7 ;
 int s_8 ;
 int s_9 ;
 int skip_utf8 (int ,int,int ,int ,int) ;
 int slice_del (struct SN_env*) ;
 int slice_from_s (struct SN_env*,int,int ) ;

__attribute__((used)) static int r_Normalize_pre(struct SN_env * z) {
    int among_var;
    { int c1 = z->c;
        while(1) {
            int c2 = z->c;
            { int c3 = z->c;
                z->bra = z->c;
                among_var = find_among(z, a_0, 144);
                if (!(among_var)) goto lab3;
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
                    case 11:
                        { int ret = slice_from_s(z, 1, s_9);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 12:
                        { int ret = slice_from_s(z, 2, s_10);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 13:
                        { int ret = slice_from_s(z, 2, s_11);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 14:
                        { int ret = slice_from_s(z, 2, s_12);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 15:
                        { int ret = slice_from_s(z, 2, s_13);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 16:
                        { int ret = slice_from_s(z, 2, s_14);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 17:
                        { int ret = slice_from_s(z, 2, s_15);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 18:
                        { int ret = slice_from_s(z, 2, s_16);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 19:
                        { int ret = slice_from_s(z, 2, s_17);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 20:
                        { int ret = slice_from_s(z, 2, s_18);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 21:
                        { int ret = slice_from_s(z, 2, s_19);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 22:
                        { int ret = slice_from_s(z, 2, s_20);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 23:
                        { int ret = slice_from_s(z, 2, s_21);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 24:
                        { int ret = slice_from_s(z, 2, s_22);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 25:
                        { int ret = slice_from_s(z, 2, s_23);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 26:
                        { int ret = slice_from_s(z, 2, s_24);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 27:
                        { int ret = slice_from_s(z, 2, s_25);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 28:
                        { int ret = slice_from_s(z, 2, s_26);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 29:
                        { int ret = slice_from_s(z, 2, s_27);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 30:
                        { int ret = slice_from_s(z, 2, s_28);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 31:
                        { int ret = slice_from_s(z, 2, s_29);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 32:
                        { int ret = slice_from_s(z, 2, s_30);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 33:
                        { int ret = slice_from_s(z, 2, s_31);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 34:
                        { int ret = slice_from_s(z, 2, s_32);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 35:
                        { int ret = slice_from_s(z, 2, s_33);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 36:
                        { int ret = slice_from_s(z, 2, s_34);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 37:
                        { int ret = slice_from_s(z, 2, s_35);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 38:
                        { int ret = slice_from_s(z, 2, s_36);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 39:
                        { int ret = slice_from_s(z, 2, s_37);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 40:
                        { int ret = slice_from_s(z, 2, s_38);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 41:
                        { int ret = slice_from_s(z, 2, s_39);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 42:
                        { int ret = slice_from_s(z, 2, s_40);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 43:
                        { int ret = slice_from_s(z, 2, s_41);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 44:
                        { int ret = slice_from_s(z, 2, s_42);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 45:
                        { int ret = slice_from_s(z, 2, s_43);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 46:
                        { int ret = slice_from_s(z, 2, s_44);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 47:
                        { int ret = slice_from_s(z, 2, s_45);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 48:
                        { int ret = slice_from_s(z, 4, s_46);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 49:
                        { int ret = slice_from_s(z, 4, s_47);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 50:
                        { int ret = slice_from_s(z, 4, s_48);
                            if (ret < 0) return ret;
                        }
                        break;
                    case 51:
                        { int ret = slice_from_s(z, 4, s_49);
                            if (ret < 0) return ret;
                        }
                        break;
                }
                goto lab2;
            lab3:
                z->c = c3;
                { int ret = skip_utf8(z->p, z->c, 0, z->l, 1);
                    if (ret < 0) goto lab1;
                    z->c = ret;
                }
            }
        lab2:
            continue;
        lab1:
            z->c = c2;
            break;
        }
        z->c = c1;
    }
    return 1;
}
