; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_update_settings.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_update_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_x264 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tune\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"x264opts\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"---------------------------------\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"preset: %s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"profile: %s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"tune: %s\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"custom settings: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_x264*, i32*, i32)* @update_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_settings(%struct.obs_x264* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.obs_x264*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.obs_x264* %0, %struct.obs_x264** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i8* @obs_data_get_string(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = call i8* @bstrdup(i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i8* @obs_data_get_string(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i8* @bstrdup(i8* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i8* @obs_data_get_string(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i8* @bstrdup(i8* %20)
  store i8* %21, i8** %9, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i8* @obs_data_get_string(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %23, i8** %10, align 8
  store i32 1, i32* %12, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = call i8** @strlist_split(i8* %24, i8 signext 32, i32 0)
  store i8** %25, i8*** %11, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @LOG_INFO, align 4
  %30 = call i32 @blog(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %3
  %32 = load %struct.obs_x264*, %struct.obs_x264** %4, align 8
  %33 = getelementptr inbounds %struct.obs_x264, %struct.obs_x264* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %77, label %36

36:                                               ; preds = %31
  %37 = load %struct.obs_x264*, %struct.obs_x264** %4, align 8
  %38 = load i8**, i8*** %11, align 8
  %39 = call i32 @override_base_params(%struct.obs_x264* %37, i8** %38, i8** %7, i8** %8, i8** %9)
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %42, %36
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %53, %50
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i8*, i8** %9, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %69, %64, %61
  %73 = load %struct.obs_x264*, %struct.obs_x264** %4, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @reset_x264_params(%struct.obs_x264* %73, i8* %74, i8* %75)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %72, %31
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %77
  %81 = load %struct.obs_x264*, %struct.obs_x264** %4, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i8**, i8*** %11, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @update_params(%struct.obs_x264* %81, i32* %82, i8** %83, i32 %84)
  %86 = load i8*, i8** %10, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load i8*, i8** %10, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %96, %93, %88, %80
  %100 = load %struct.obs_x264*, %struct.obs_x264** %4, align 8
  %101 = getelementptr inbounds %struct.obs_x264, %struct.obs_x264* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = load %struct.obs_x264*, %struct.obs_x264** %4, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @apply_x264_profile(%struct.obs_x264* %105, i8* %106)
  br label %108

108:                                              ; preds = %104, %99
  br label %109

109:                                              ; preds = %108, %77
  %110 = load %struct.obs_x264*, %struct.obs_x264** %4, align 8
  %111 = getelementptr inbounds %struct.obs_x264, %struct.obs_x264* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 0, i32* %112, align 4
  %113 = load i8**, i8*** %11, align 8
  %114 = call i32 @strlist_free(i8** %113)
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @bfree(i8* %115)
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @bfree(i8* %117)
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @bfree(i8* %119)
  %121 = load i32, i32* %12, align 4
  ret i32 %121
}

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i8** @strlist_split(i8*, i8 signext, i32) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @override_base_params(%struct.obs_x264*, i8**, i8**, i8**, i8**) #1

declare dso_local i32 @info(i8*, i8*) #1

declare dso_local i32 @reset_x264_params(%struct.obs_x264*, i8*, i8*) #1

declare dso_local i32 @update_params(%struct.obs_x264*, i32*, i8**, i32) #1

declare dso_local i32 @apply_x264_profile(%struct.obs_x264*, i8*) #1

declare dso_local i32 @strlist_free(i8**) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
