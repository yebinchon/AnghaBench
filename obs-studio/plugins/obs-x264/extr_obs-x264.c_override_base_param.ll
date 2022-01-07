; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_override_base_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_override_base_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_x264 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@x264_preset_names = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@x264_profile_names = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"tune\00", align 1
@x264_tune_names = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_x264*, i8*, i8**, i8**, i8**)* @override_base_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @override_base_param(%struct.obs_x264* %0, i8* %1, i8** %2, i8** %3, i8** %4) #0 {
  %6 = alloca %struct.obs_x264*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.obs_x264* %0, %struct.obs_x264** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8** %4, i8*** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @getparam(i8* %16, i8** %11, i8** %12)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %81

19:                                               ; preds = %5
  %20 = load i8*, i8** %11, align 8
  %21 = call i64 @astrcmpi(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.obs_x264*, %struct.obs_x264** %6, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* @x264_preset_names, align 4
  %27 = call i8* @validate(%struct.obs_x264* %24, i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i8**, i8*** %8, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @bfree(i8* %32)
  %34 = load i8*, i8** %12, align 8
  %35 = call i8* @bstrdup(i8* %34)
  %36 = load i8**, i8*** %8, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %30, %23
  br label %78

38:                                               ; preds = %19
  %39 = load i8*, i8** %11, align 8
  %40 = call i64 @astrcmpi(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.obs_x264*, %struct.obs_x264** %6, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* @x264_profile_names, align 4
  %46 = call i8* @validate(%struct.obs_x264* %43, i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i8**, i8*** %9, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @bfree(i8* %51)
  %53 = load i8*, i8** %12, align 8
  %54 = call i8* @bstrdup(i8* %53)
  %55 = load i8**, i8*** %9, align 8
  store i8* %54, i8** %55, align 8
  br label %56

56:                                               ; preds = %49, %42
  br label %77

57:                                               ; preds = %38
  %58 = load i8*, i8** %11, align 8
  %59 = call i64 @astrcmpi(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load %struct.obs_x264*, %struct.obs_x264** %6, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* @x264_tune_names, align 4
  %65 = call i8* @validate(%struct.obs_x264* %62, i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  store i8* %65, i8** %15, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load i8**, i8*** %10, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @bfree(i8* %70)
  %72 = load i8*, i8** %12, align 8
  %73 = call i8* @bstrdup(i8* %72)
  %74 = load i8**, i8*** %10, align 8
  store i8* %73, i8** %74, align 8
  br label %75

75:                                               ; preds = %68, %61
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76, %56
  br label %78

78:                                               ; preds = %77, %37
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @bfree(i8* %79)
  br label %81

81:                                               ; preds = %78, %5
  ret void
}

declare dso_local i64 @getparam(i8*, i8**, i8**) #1

declare dso_local i64 @astrcmpi(i8*, i8*) #1

declare dso_local i8* @validate(%struct.obs_x264*, i8*, i8*, i32) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i8* @bstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
