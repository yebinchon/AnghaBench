; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-key-filter.c_key_settings_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-key-filter.c_key_settings_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_key_filter_data = type { float, float, i32 }

@SETTING_SIMILARITY = common dso_local global i32 0, align 4
@SETTING_SMOOTHNESS = common dso_local global i32 0, align 4
@SETTING_KEY_COLOR = common dso_local global i32 0, align 4
@SETTING_COLOR_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.color_key_filter_data*, i32*)* @key_settings_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_settings_update(%struct.color_key_filter_data* %0, i32* %1) #0 {
  %3 = alloca %struct.color_key_filter_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.color_key_filter_data* %0, %struct.color_key_filter_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @SETTING_SIMILARITY, align 4
  %11 = call i64 @obs_data_get_int(i32* %9, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @SETTING_SMOOTHNESS, align 4
  %14 = call i64 @obs_data_get_int(i32* %12, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @SETTING_KEY_COLOR, align 4
  %17 = call i64 @obs_data_get_int(i32* %15, i32 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @SETTING_COLOR_TYPE, align 4
  %21 = call i8* @obs_data_get_string(i32* %19, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 65280, i32* %7, align 4
  br label %44

26:                                               ; preds = %2
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 16711680, i32* %7, align 4
  br label %43

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 255, i32* %7, align 4
  br label %42

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 16711935, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %35
  br label %43

43:                                               ; preds = %42, %30
  br label %44

44:                                               ; preds = %43, %25
  %45 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %3, align 8
  %46 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %45, i32 0, i32 2
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, -16777216
  %49 = call i32 @vec4_from_rgba(i32* %46, i32 %48)
  %50 = load i64, i64* %5, align 8
  %51 = sitofp i64 %50 to float
  %52 = fdiv float %51, 1.000000e+03
  %53 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %3, align 8
  %54 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %53, i32 0, i32 0
  store float %52, float* %54, align 4
  %55 = load i64, i64* %6, align 8
  %56 = sitofp i64 %55 to float
  %57 = fdiv float %56, 1.000000e+03
  %58 = load %struct.color_key_filter_data*, %struct.color_key_filter_data** %3, align 8
  %59 = getelementptr inbounds %struct.color_key_filter_data, %struct.color_key_filter_data* %58, i32 0, i32 1
  store float %57, float* %59, align 4
  ret void
}

declare dso_local i64 @obs_data_get_int(i32*, i32) #1

declare dso_local i8* @obs_data_get_string(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @vec4_from_rgba(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
