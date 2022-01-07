; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_decode_funcs.c_get_status_regs_and_bits.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_decode_funcs.c_get_status_regs_and_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ST0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"st0_dp07\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"st0_dp08\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"st0_dp09\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"st0_dp10\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"st0_dp11\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"st0_dp12\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"st0_dp13\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"st0_dp14\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"st0_dp15\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"st0_acov1\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"st0_acov0\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"st0_carry\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"st0_tc2\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"st0_tc1\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"st0_acov3\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"st0_acov2\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ST1\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"st1_dr2_00\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"st1_dr2_01\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"st1_dr2_02\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"st1_dr2_03\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"st1_dr2_04\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"st1_c54cm\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"st1_frct\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"st1_c16\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"st1_sxmd\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"st1_satd\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"st1_m40\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"st1_intm\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"st1_hm\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"st1_xf\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"st1_cpl\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"st1_braf\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"ST2\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"st2_ar0lc\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"st2_ar1lc\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"st2_ar2lc\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"st2_ar3lc\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"st2_ar4lc\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"st2_ar5lc\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"st2_ar6lc\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"st2_ar7lc\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"st2_cdplc\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"st2_govf\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"st2_rdm\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"st2_eallow\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"st2_dbgm\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"st2_xcnd\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"st2_xcna\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"st2_arms\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"ST3\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"st3_sst\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"st3_smul\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"st3_clkoff\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"st3_bptr\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"st3_avis\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"st3_sata\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"st3_mpnmc\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"st3_cberr\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"st3_homp\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"st3_homr\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"st3_homx\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"st3_homy\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"st3_hint\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"st3_caclr\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"st3_caen\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"st3_cafrz\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_status_regs_and_bits(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %27 [
    i32 0, label %11
    i32 1, label %12
    i32 2, label %13
    i32 3, label %14
    i32 4, label %15
    i32 5, label %16
    i32 6, label %17
    i32 7, label %18
    i32 8, label %19
    i32 9, label %20
    i32 10, label %21
    i32 11, label %22
    i32 12, label %23
    i32 13, label %24
    i32 14, label %25
    i32 15, label %26
  ]

11:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %27

12:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %27

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %27

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %27

15:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %27

16:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %27

17:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %27

18:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %27

19:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %27

20:                                               ; preds = %9
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %27

21:                                               ; preds = %9
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %27

22:                                               ; preds = %9
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  br label %27

23:                                               ; preds = %9
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  br label %27

24:                                               ; preds = %9
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %5, align 8
  br label %27

25:                                               ; preds = %9
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  br label %27

26:                                               ; preds = %9
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %5, align 8
  br label %27

27:                                               ; preds = %9, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11
  br label %100

28:                                               ; preds = %2
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 3)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %50 [
    i32 0, label %34
    i32 1, label %35
    i32 2, label %36
    i32 3, label %37
    i32 4, label %38
    i32 5, label %39
    i32 6, label %40
    i32 7, label %41
    i32 8, label %42
    i32 9, label %43
    i32 10, label %44
    i32 11, label %45
    i32 12, label %46
    i32 13, label %47
    i32 14, label %48
    i32 15, label %49
  ]

34:                                               ; preds = %32
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8** %5, align 8
  br label %50

35:                                               ; preds = %32
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8** %5, align 8
  br label %50

36:                                               ; preds = %32
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8** %5, align 8
  br label %50

37:                                               ; preds = %32
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8** %5, align 8
  br label %50

38:                                               ; preds = %32
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8** %5, align 8
  br label %50

39:                                               ; preds = %32
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** %5, align 8
  br label %50

40:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8** %5, align 8
  br label %50

41:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8** %5, align 8
  br label %50

42:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8** %5, align 8
  br label %50

43:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8** %5, align 8
  br label %50

44:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8** %5, align 8
  br label %50

45:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8** %5, align 8
  br label %50

46:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8** %5, align 8
  br label %50

47:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8** %5, align 8
  br label %50

48:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8** %5, align 8
  br label %50

49:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8** %5, align 8
  br label %50

50:                                               ; preds = %32, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34
  br label %99

51:                                               ; preds = %28
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i32 3)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  switch i32 %56, label %73 [
    i32 0, label %57
    i32 1, label %58
    i32 2, label %59
    i32 3, label %60
    i32 4, label %61
    i32 5, label %62
    i32 6, label %63
    i32 7, label %64
    i32 8, label %65
    i32 9, label %66
    i32 10, label %67
    i32 11, label %68
    i32 12, label %69
    i32 13, label %70
    i32 14, label %71
    i32 15, label %72
  ]

57:                                               ; preds = %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i8** %5, align 8
  br label %73

58:                                               ; preds = %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8** %5, align 8
  br label %73

59:                                               ; preds = %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i8** %5, align 8
  br label %73

60:                                               ; preds = %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i8** %5, align 8
  br label %73

61:                                               ; preds = %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8** %5, align 8
  br label %73

62:                                               ; preds = %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i8** %5, align 8
  br label %73

63:                                               ; preds = %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i8** %5, align 8
  br label %73

64:                                               ; preds = %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8** %5, align 8
  br label %73

65:                                               ; preds = %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0), i8** %5, align 8
  br label %73

66:                                               ; preds = %55
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i8** %5, align 8
  br label %73

67:                                               ; preds = %55
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i8** %5, align 8
  br label %73

68:                                               ; preds = %55
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0), i8** %5, align 8
  br label %73

69:                                               ; preds = %55
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), i8** %5, align 8
  br label %73

70:                                               ; preds = %55
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i8** %5, align 8
  br label %73

71:                                               ; preds = %55
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i8** %5, align 8
  br label %73

72:                                               ; preds = %55
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8** %5, align 8
  br label %73

73:                                               ; preds = %55, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57
  br label %98

74:                                               ; preds = %51
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @strncmp(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), i32 3)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  switch i32 %79, label %96 [
    i32 0, label %80
    i32 1, label %81
    i32 2, label %82
    i32 3, label %83
    i32 4, label %84
    i32 5, label %85
    i32 6, label %86
    i32 7, label %87
    i32 8, label %88
    i32 9, label %89
    i32 10, label %90
    i32 11, label %91
    i32 12, label %92
    i32 13, label %93
    i32 14, label %94
    i32 15, label %95
  ]

80:                                               ; preds = %78
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0), i8** %5, align 8
  br label %96

81:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0), i8** %5, align 8
  br label %96

82:                                               ; preds = %78
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0), i8** %5, align 8
  br label %96

83:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8** %5, align 8
  br label %96

84:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i8** %5, align 8
  br label %96

85:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0), i8** %5, align 8
  br label %96

86:                                               ; preds = %78
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0), i8** %5, align 8
  br label %96

87:                                               ; preds = %78
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i8** %5, align 8
  br label %96

88:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8** %5, align 8
  br label %96

89:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8** %5, align 8
  br label %96

90:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i64 0, i64 0), i8** %5, align 8
  br label %96

91:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i8** %5, align 8
  br label %96

92:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), i8** %5, align 8
  br label %96

93:                                               ; preds = %78
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i64 0, i64 0), i8** %5, align 8
  br label %96

94:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i64 0, i64 0), i8** %5, align 8
  br label %96

95:                                               ; preds = %78
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i8** %5, align 8
  br label %96

96:                                               ; preds = %78, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80
  br label %97

97:                                               ; preds = %96, %74
  br label %98

98:                                               ; preds = %97, %73
  br label %99

99:                                               ; preds = %98, %50
  br label %100

100:                                              ; preds = %99, %27
  %101 = load i8*, i8** %5, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i8*, i8** %5, align 8
  %105 = call i8* @strdup(i8* %104)
  store i8* %105, i8** %5, align 8
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i8*, i8** %5, align 8
  ret i8* %107
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
