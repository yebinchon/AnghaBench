; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_get_sample_filter.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_get_sample_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Anisotropy\00", align 1
@GS_FILTER_ANISOTROPIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MIN_MAG_MIP_POINT\00", align 1
@GS_FILTER_POINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"MIN_MAG_MIP_LINEAR\00", align 1
@GS_FILTER_LINEAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"MIN_MAG_POINT_MIP_LINEAR\00", align 1
@GS_FILTER_MIN_MAG_POINT_MIP_LINEAR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"MIN_POINT_MAG_LINEAR_MIP_POINT\00", align 1
@GS_FILTER_MIN_POINT_MAG_LINEAR_MIP_POINT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"MIN_POINT_MAG_MIP_LINEAR\00", align 1
@GS_FILTER_MIN_POINT_MAG_MIP_LINEAR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"MIN_LINEAR_MAG_MIP_POINT\00", align 1
@GS_FILTER_MIN_LINEAR_MAG_MIP_POINT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"MIN_LINEAR_MAG_POINT_MIP_LINEAR\00", align 1
@GS_FILTER_MIN_LINEAR_MAG_POINT_MIP_LINEAR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"MIN_MAG_LINEAR_MIP_POINT\00", align 1
@GS_FILTER_MIN_MAG_LINEAR_MIP_POINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_sample_filter(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @astrcmpi(i8* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @GS_FILTER_ANISOTROPIC, align 4
  store i32 %8, i32* %2, align 4
  br label %75

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @astrcmpi(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %9
  %18 = load i32, i32* @GS_FILTER_POINT, align 4
  store i32 %18, i32* %2, align 4
  br label %75

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @astrcmpi(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19
  %28 = load i32, i32* @GS_FILTER_LINEAR, align 4
  store i32 %28, i32* %2, align 4
  br label %75

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @GS_FILTER_MIN_MAG_POINT_MIP_LINEAR, align 4
  store i32 %34, i32* %2, align 4
  br label %75

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @GS_FILTER_MIN_POINT_MAG_LINEAR_MIP_POINT, align 4
  store i32 %40, i32* %2, align 4
  br label %75

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @GS_FILTER_MIN_POINT_MAG_MIP_LINEAR, align 4
  store i32 %46, i32* %2, align 4
  br label %75

47:                                               ; preds = %41
  %48 = load i8*, i8** %3, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @GS_FILTER_MIN_LINEAR_MAG_MIP_POINT, align 4
  store i32 %52, i32* %2, align 4
  br label %75

53:                                               ; preds = %47
  %54 = load i8*, i8** %3, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @GS_FILTER_MIN_LINEAR_MAG_POINT_MIP_LINEAR, align 4
  store i32 %58, i32* %2, align 4
  br label %75

59:                                               ; preds = %53
  %60 = load i8*, i8** %3, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @GS_FILTER_MIN_MAG_LINEAR_MIP_POINT, align 4
  store i32 %64, i32* %2, align 4
  br label %75

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* @GS_FILTER_LINEAR, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %63, %57, %51, %45, %39, %33, %27, %17, %7
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @astrcmpi(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
