#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct SN_env {int lb; int c; int l; int* B; } ;

/* Variables and functions */
 int FUNC0 (struct SN_env*) ; 
 int FUNC1 (struct SN_env*) ; 
 int FUNC2 (struct SN_env*) ; 
 int FUNC3 (struct SN_env*) ; 
 int FUNC4 (struct SN_env*) ; 
 int FUNC5 (struct SN_env*) ; 
 int FUNC6 (struct SN_env*) ; 
 int FUNC7 (struct SN_env*) ; 
 int FUNC8 (struct SN_env*) ; 
 int FUNC9 (struct SN_env*) ; 
 int FUNC10 (struct SN_env*) ; 
 int FUNC11 (struct SN_env*) ; 
 int FUNC12 (struct SN_env*) ; 
 int FUNC13 (struct SN_env*) ; 
 int FUNC14 (struct SN_env*) ; 
 int FUNC15 (struct SN_env*) ; 
 int FUNC16 (struct SN_env*) ; 
 int FUNC17 (struct SN_env*) ; 
 int FUNC18 (struct SN_env*) ; 
 int FUNC19 (struct SN_env*) ; 
 int FUNC20 (struct SN_env*) ; 
 int FUNC21 (struct SN_env*) ; 
 int FUNC22 (struct SN_env*) ; 
 int FUNC23 (struct SN_env*) ; 
 int FUNC24 (struct SN_env*) ; 
 int FUNC25 (struct SN_env*) ; 
 int FUNC26 (struct SN_env*) ; 
 int FUNC27 (struct SN_env*) ; 
 int FUNC28 (struct SN_env*) ; 
 int FUNC29 (struct SN_env*) ; 
 int FUNC30 (struct SN_env*) ; 
 int FUNC31 (struct SN_env*) ; 
 int FUNC32 (struct SN_env*) ; 
 int FUNC33 (struct SN_env*) ; 

extern int FUNC34(struct SN_env * z) { /* forwardmode */
    z->lb = z->c; z->c = z->l; /* backwards, line 671 */

    {   int m1 = z->l - z->c; (void)m1; /* do, line 672 */
        {   int ret = FUNC33(z); /* call tolower, line 672 */
            if (ret == 0) goto lab0;
            if (ret < 0) return ret;
        }
    lab0:
        z->c = z->l - m1;
    }
    {   int ret = FUNC0(z); /* call has_min_length, line 673 */
        if (ret <= 0) return ret;
    }
    z->B[0] = 1; /* set test1, line 674 */
    {   int m2 = z->l - z->c; (void)m2; /* do, line 675 */
        {   int ret = FUNC1(z); /* call step1, line 675 */
            if (ret == 0) goto lab1;
            if (ret < 0) return ret;
        }
    lab1:
        z->c = z->l - m2;
    }
    {   int m3 = z->l - z->c; (void)m3; /* do, line 676 */
        {   int ret = FUNC23(z); /* call steps1, line 676 */
            if (ret == 0) goto lab2;
            if (ret < 0) return ret;
        }
    lab2:
        z->c = z->l - m3;
    }
    {   int m4 = z->l - z->c; (void)m4; /* do, line 677 */
        {   int ret = FUNC25(z); /* call steps2, line 677 */
            if (ret == 0) goto lab3;
            if (ret < 0) return ret;
        }
    lab3:
        z->c = z->l - m4;
    }
    {   int m5 = z->l - z->c; (void)m5; /* do, line 678 */
        {   int ret = FUNC26(z); /* call steps3, line 678 */
            if (ret == 0) goto lab4;
            if (ret < 0) return ret;
        }
    lab4:
        z->c = z->l - m5;
    }
    {   int m6 = z->l - z->c; (void)m6; /* do, line 679 */
        {   int ret = FUNC27(z); /* call steps4, line 679 */
            if (ret == 0) goto lab5;
            if (ret < 0) return ret;
        }
    lab5:
        z->c = z->l - m6;
    }
    {   int m7 = z->l - z->c; (void)m7; /* do, line 680 */
        {   int ret = FUNC28(z); /* call steps5, line 680 */
            if (ret == 0) goto lab6;
            if (ret < 0) return ret;
        }
    lab6:
        z->c = z->l - m7;
    }
    {   int m8 = z->l - z->c; (void)m8; /* do, line 681 */
        {   int ret = FUNC29(z); /* call steps6, line 681 */
            if (ret == 0) goto lab7;
            if (ret < 0) return ret;
        }
    lab7:
        z->c = z->l - m8;
    }
    {   int m9 = z->l - z->c; (void)m9; /* do, line 682 */
        {   int ret = FUNC30(z); /* call steps7, line 682 */
            if (ret == 0) goto lab8;
            if (ret < 0) return ret;
        }
    lab8:
        z->c = z->l - m9;
    }
    {   int m10 = z->l - z->c; (void)m10; /* do, line 683 */
        {   int ret = FUNC31(z); /* call steps8, line 683 */
            if (ret == 0) goto lab9;
            if (ret < 0) return ret;
        }
    lab9:
        z->c = z->l - m10;
    }
    {   int m11 = z->l - z->c; (void)m11; /* do, line 684 */
        {   int ret = FUNC32(z); /* call steps9, line 684 */
            if (ret == 0) goto lab10;
            if (ret < 0) return ret;
        }
    lab10:
        z->c = z->l - m11;
    }
    {   int m12 = z->l - z->c; (void)m12; /* do, line 685 */
        {   int ret = FUNC24(z); /* call steps10, line 685 */
            if (ret == 0) goto lab11;
            if (ret < 0) return ret;
        }
    lab11:
        z->c = z->l - m12;
    }
    {   int m13 = z->l - z->c; (void)m13; /* do, line 686 */
        {   int ret = FUNC2(z); /* call step2a, line 686 */
            if (ret == 0) goto lab12;
            if (ret < 0) return ret;
        }
    lab12:
        z->c = z->l - m13;
    }
    {   int m14 = z->l - z->c; (void)m14; /* do, line 687 */
        {   int ret = FUNC3(z); /* call step2b, line 687 */
            if (ret == 0) goto lab13;
            if (ret < 0) return ret;
        }
    lab13:
        z->c = z->l - m14;
    }
    {   int m15 = z->l - z->c; (void)m15; /* do, line 688 */
        {   int ret = FUNC4(z); /* call step2c, line 688 */
            if (ret == 0) goto lab14;
            if (ret < 0) return ret;
        }
    lab14:
        z->c = z->l - m15;
    }
    {   int m16 = z->l - z->c; (void)m16; /* do, line 689 */
        {   int ret = FUNC5(z); /* call step2d, line 689 */
            if (ret == 0) goto lab15;
            if (ret < 0) return ret;
        }
    lab15:
        z->c = z->l - m16;
    }
    {   int m17 = z->l - z->c; (void)m17; /* do, line 690 */
        {   int ret = FUNC6(z); /* call step3, line 690 */
            if (ret == 0) goto lab16;
            if (ret < 0) return ret;
        }
    lab16:
        z->c = z->l - m17;
    }
    {   int m18 = z->l - z->c; (void)m18; /* do, line 691 */
        {   int ret = FUNC7(z); /* call step4, line 691 */
            if (ret == 0) goto lab17;
            if (ret < 0) return ret;
        }
    lab17:
        z->c = z->l - m18;
    }
    {   int m19 = z->l - z->c; (void)m19; /* do, line 692 */
        {   int ret = FUNC8(z); /* call step5a, line 692 */
            if (ret == 0) goto lab18;
            if (ret < 0) return ret;
        }
    lab18:
        z->c = z->l - m19;
    }
    {   int m20 = z->l - z->c; (void)m20; /* do, line 693 */
        {   int ret = FUNC9(z); /* call step5b, line 693 */
            if (ret == 0) goto lab19;
            if (ret < 0) return ret;
        }
    lab19:
        z->c = z->l - m20;
    }
    {   int m21 = z->l - z->c; (void)m21; /* do, line 694 */
        {   int ret = FUNC10(z); /* call step5c, line 694 */
            if (ret == 0) goto lab20;
            if (ret < 0) return ret;
        }
    lab20:
        z->c = z->l - m21;
    }
    {   int m22 = z->l - z->c; (void)m22; /* do, line 695 */
        {   int ret = FUNC11(z); /* call step5d, line 695 */
            if (ret == 0) goto lab21;
            if (ret < 0) return ret;
        }
    lab21:
        z->c = z->l - m22;
    }
    {   int m23 = z->l - z->c; (void)m23; /* do, line 696 */
        {   int ret = FUNC12(z); /* call step5e, line 696 */
            if (ret == 0) goto lab22;
            if (ret < 0) return ret;
        }
    lab22:
        z->c = z->l - m23;
    }
    {   int m24 = z->l - z->c; (void)m24; /* do, line 697 */
        {   int ret = FUNC13(z); /* call step5f, line 697 */
            if (ret == 0) goto lab23;
            if (ret < 0) return ret;
        }
    lab23:
        z->c = z->l - m24;
    }
    {   int m25 = z->l - z->c; (void)m25; /* do, line 698 */
        {   int ret = FUNC14(z); /* call step5g, line 698 */
            if (ret == 0) goto lab24;
            if (ret < 0) return ret;
        }
    lab24:
        z->c = z->l - m25;
    }
    {   int m26 = z->l - z->c; (void)m26; /* do, line 699 */
        {   int ret = FUNC15(z); /* call step5h, line 699 */
            if (ret == 0) goto lab25;
            if (ret < 0) return ret;
        }
    lab25:
        z->c = z->l - m26;
    }
    {   int m27 = z->l - z->c; (void)m27; /* do, line 700 */
        {   int ret = FUNC17(z); /* call step5j, line 700 */
            if (ret == 0) goto lab26;
            if (ret < 0) return ret;
        }
    lab26:
        z->c = z->l - m27;
    }
    {   int m28 = z->l - z->c; (void)m28; /* do, line 701 */
        {   int ret = FUNC16(z); /* call step5i, line 701 */
            if (ret == 0) goto lab27;
            if (ret < 0) return ret;
        }
    lab27:
        z->c = z->l - m28;
    }
    {   int m29 = z->l - z->c; (void)m29; /* do, line 702 */
        {   int ret = FUNC18(z); /* call step5k, line 702 */
            if (ret == 0) goto lab28;
            if (ret < 0) return ret;
        }
    lab28:
        z->c = z->l - m29;
    }
    {   int m30 = z->l - z->c; (void)m30; /* do, line 703 */
        {   int ret = FUNC19(z); /* call step5l, line 703 */
            if (ret == 0) goto lab29;
            if (ret < 0) return ret;
        }
    lab29:
        z->c = z->l - m30;
    }
    {   int m31 = z->l - z->c; (void)m31; /* do, line 704 */
        {   int ret = FUNC20(z); /* call step5m, line 704 */
            if (ret == 0) goto lab30;
            if (ret < 0) return ret;
        }
    lab30:
        z->c = z->l - m31;
    }
    {   int m32 = z->l - z->c; (void)m32; /* do, line 705 */
        {   int ret = FUNC21(z); /* call step6, line 705 */
            if (ret == 0) goto lab31;
            if (ret < 0) return ret;
        }
    lab31:
        z->c = z->l - m32;
    }
    {   int m33 = z->l - z->c; (void)m33; /* do, line 706 */
        {   int ret = FUNC22(z); /* call step7, line 706 */
            if (ret == 0) goto lab32;
            if (ret < 0) return ret;
        }
    lab32:
        z->c = z->l - m33;
    }
    z->c = z->lb;
    return 1;
}