; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_ppc_pseudo.c_getspr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_ppc_pseudo.c_getspr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getspr.cspr = internal global [16 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"mq\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"xer\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rtcu\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"rtcl\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"lr\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ctr\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"dsisr\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dar\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"sdr1\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"srr0\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"srr1\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"vrsave\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"tbrl\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"tbru\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"sprg0\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"sprg1\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"sprg2\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"sprg3\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ear\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"tbl\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"tbu\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"pvr\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"spefscr\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"ibat0u\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"ibat0l\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"ibat1u\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"ibat1l\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"ibat2u\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"ibat2l\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"ibat3u\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"ibat3l\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"dbat0u\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"dbat0l\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"dbat1u\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"dbat1l\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"dbat2u\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"dbat2l\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"dbat3u\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"dbat3l\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"ummcr0\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"ummcr1\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"upmc1\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"upmc2\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"usia\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"upmc3\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"upmc4\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"mmcr0\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"pmc1\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"pmc2\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"sia\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"mmcr1\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"pmc3\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"pmc4\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"dmiss\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"dcmp\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"hash1\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"hash2\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"imiss\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"icmp\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"rpa\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"hid0\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"hid1\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"iabr\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"hid2\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"hid4\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"dabr\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"hid5\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"hid6\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"ictc\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"thrm1\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"thrm2\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"thrm3\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"pir\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"spr_%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @getspr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getspr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %95

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strtol(i8* %9, i32* null, i32 16)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 9999
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i8* null, i8** %2, align 8
  br label %95

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %91 [
    i32 163, label %16
    i32 128, label %17
    i32 154, label %18
    i32 155, label %19
    i32 166, label %20
    i32 202, label %21
    i32 188, label %22
    i32 200, label %23
    i32 190, label %24
    i32 152, label %25
    i32 145, label %26
    i32 144, label %27
    i32 129, label %28
    i32 142, label %29
    i32 141, label %30
    i32 149, label %31
    i32 148, label %32
    i32 147, label %33
    i32 146, label %34
    i32 187, label %35
    i32 143, label %36
    i32 140, label %37
    i32 157, label %38
    i32 150, label %39
    i32 176, label %40
    i32 177, label %41
    i32 174, label %42
    i32 175, label %43
    i32 172, label %44
    i32 173, label %45
    i32 170, label %46
    i32 171, label %47
    i32 198, label %48
    i32 199, label %49
    i32 196, label %50
    i32 197, label %51
    i32 194, label %52
    i32 195, label %53
    i32 192, label %54
    i32 193, label %55
    i32 136, label %56
    i32 135, label %57
    i32 134, label %58
    i32 133, label %59
    i32 130, label %60
    i32 132, label %61
    i32 131, label %62
    i32 165, label %63
    i32 161, label %64
    i32 160, label %65
    i32 151, label %66
    i32 164, label %67
    i32 159, label %68
    i32 158, label %69
    i32 153, label %70
    i32 189, label %71
    i32 191, label %72
    i32 186, label %73
    i32 185, label %74
    i32 167, label %75
    i32 169, label %76
    i32 156, label %77
    i32 184, label %78
    i32 183, label %79
    i32 178, label %80
    i32 182, label %81
    i32 181, label %82
    i32 201, label %83
    i32 180, label %84
    i32 179, label %85
    i32 168, label %86
    i32 139, label %87
    i32 138, label %88
    i32 137, label %89
    i32 162, label %90
  ]

16:                                               ; preds = %14
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %95

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %95

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %95

19:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %95

20:                                               ; preds = %14
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %95

21:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %95

22:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %95

23:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %95

24:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %95

25:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %95

26:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %95

27:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %95

28:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %95

29:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %95

30:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %95

31:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %95

32:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %95

33:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %95

34:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %95

35:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %95

36:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %95

37:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %95

38:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %95

39:                                               ; preds = %14
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %95

40:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %95

41:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %95

42:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %95

43:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %95

44:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %95

45:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %95

46:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %95

47:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %95

48:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %95

49:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %95

50:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %95

51:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %95

52:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %95

53:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %95

54:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %95

55:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %95

56:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %95

57:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %95

58:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %95

59:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %95

60:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %95

61:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8** %2, align 8
  br label %95

62:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i8** %2, align 8
  br label %95

63:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i8** %2, align 8
  br label %95

64:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i8** %2, align 8
  br label %95

65:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i8** %2, align 8
  br label %95

66:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8** %2, align 8
  br label %95

67:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i8** %2, align 8
  br label %95

68:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8** %2, align 8
  br label %95

69:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8** %2, align 8
  br label %95

70:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8** %2, align 8
  br label %95

71:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), i8** %2, align 8
  br label %95

72:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i8** %2, align 8
  br label %95

73:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i8** %2, align 8
  br label %95

74:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8** %2, align 8
  br label %95

75:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i64 0, i64 0), i8** %2, align 8
  br label %95

76:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i8** %2, align 8
  br label %95

77:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), i8** %2, align 8
  br label %95

78:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i8** %2, align 8
  br label %95

79:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8** %2, align 8
  br label %95

80:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i8** %2, align 8
  br label %95

81:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i8** %2, align 8
  br label %95

82:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i8** %2, align 8
  br label %95

83:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0), i8** %2, align 8
  br label %95

84:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i8** %2, align 8
  br label %95

85:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0), i8** %2, align 8
  br label %95

86:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8** %2, align 8
  br label %95

87:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), i8** %2, align 8
  br label %95

88:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i8** %2, align 8
  br label %95

89:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0), i8** %2, align 8
  br label %95

90:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i8** %2, align 8
  br label %95

91:                                               ; preds = %14
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getspr.cspr, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getspr.cspr, i64 0, i64 0), i8** %2, align 8
  br label %95

95:                                               ; preds = %94, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %13, %7
  %96 = load i8*, i8** %2, align 8
  ret i8* %96
}

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
