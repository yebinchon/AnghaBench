; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_spell.c_spell_check_sps.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_spell.c_spell_check_sps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHL = common dso_local global i32 0, align 4
@sps_flags = common dso_local global i32 0, align 4
@sps_limit = common dso_local global i32 0, align 4
@p_sps = common dso_local global i64* null, align 8
@NUL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"best\00", align 1
@SPS_BEST = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@SPS_FAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@SPS_DOUBLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"expr:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@FAIL = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spell_check_sps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAXPATHL, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i64, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  store i32 0, i32* @sps_flags, align 4
  store i32 9999, i32* @sps_limit, align 4
  %12 = load i64*, i64** @p_sps, align 8
  store i64* %12, i64** %2, align 8
  br label %13

13:                                               ; preds = %82, %0
  %14 = load i64*, i64** %2, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NUL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %83

18:                                               ; preds = %13
  %19 = load i32, i32* @MAXPATHL, align 4
  %20 = call i32 @copy_option_part(i64** %2, i64* %11, i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  %21 = load i64, i64* %11, align 16
  %22 = call i64 @VIM_ISDIGIT(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  store i64* %11, i64** %3, align 8
  %25 = call i32 @getdigits(i64** %3)
  store i32 %25, i32* @sps_limit, align 4
  %26 = load i64*, i64** %3, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NUL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i64*, i64** %3, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @VIM_ISDIGIT(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %30, %24
  br label %64

37:                                               ; preds = %18
  %38 = call i64 @STRCMP(i64* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8*, i8** @SPS_BEST, align 8
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %6, align 4
  br label %63

43:                                               ; preds = %37
  %44 = call i64 @STRCMP(i64* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @SPS_FAST, align 4
  store i32 %47, i32* %6, align 4
  br label %62

48:                                               ; preds = %43
  %49 = call i64 @STRCMP(i64* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @SPS_DOUBLE, align 4
  store i32 %52, i32* %6, align 4
  br label %61

53:                                               ; preds = %48
  %54 = call i64 @STRNCMP(i64* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = call i64 @STRNCMP(i64* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 -1, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %56, %53
  br label %61

61:                                               ; preds = %60, %51
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62, %40
  br label %64

64:                                               ; preds = %63, %36
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @sps_flags, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70, %64
  %74 = load i8*, i8** @SPS_BEST, align 8
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* @sps_flags, align 4
  store i32 9999, i32* @sps_limit, align 4
  %76 = load i32, i32* @FAIL, align 4
  store i32 %76, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %91

77:                                               ; preds = %70, %67
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* @sps_flags, align 4
  br label %82

82:                                               ; preds = %80, %77
  br label %13

83:                                               ; preds = %13
  %84 = load i32, i32* @sps_flags, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i8*, i8** @SPS_BEST, align 8
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* @sps_flags, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* @OK, align 4
  store i32 %90, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %91

91:                                               ; preds = %89, %73
  %92 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @copy_option_part(i64**, i64*, i32, i8*) #2

declare dso_local i64 @VIM_ISDIGIT(i64) #2

declare dso_local i32 @getdigits(i64**) #2

declare dso_local i64 @STRCMP(i64*, i8*) #2

declare dso_local i64 @STRNCMP(i64*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
