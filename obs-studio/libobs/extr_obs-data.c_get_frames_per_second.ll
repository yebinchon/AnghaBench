; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_get_frames_per_second.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_get_frames_per_second.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_frames_per_second = type { i8*, i8* }
%struct.obs_data_item = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"numerator\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"denominator\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.media_frames_per_second*, i8**)* @get_frames_per_second to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_frames_per_second(i32* %0, %struct.media_frames_per_second* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.media_frames_per_second*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.obs_data_item*, align 8
  %9 = alloca %struct.obs_data_item*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.media_frames_per_second* %1, %struct.media_frames_per_second** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = call i64 @get_option(i32* %16, i8** %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %69

21:                                               ; preds = %15
  %22 = load %struct.media_frames_per_second*, %struct.media_frames_per_second** %6, align 8
  %23 = icmp ne %struct.media_frames_per_second* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %66

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.obs_data_item* @obs_data_item_byname(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.obs_data_item* %27, %struct.obs_data_item** %8, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call %struct.obs_data_item* @obs_data_item_byname(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store %struct.obs_data_item* %29, %struct.obs_data_item** %9, align 8
  %30 = load %struct.obs_data_item*, %struct.obs_data_item** %8, align 8
  %31 = icmp ne %struct.obs_data_item* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %34 = icmp ne %struct.obs_data_item* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %25
  %36 = call i32 @obs_data_item_release(%struct.obs_data_item** %8)
  %37 = call i32 @obs_data_item_release(%struct.obs_data_item** %9)
  br label %66

38:                                               ; preds = %32
  %39 = load %struct.obs_data_item*, %struct.obs_data_item** %8, align 8
  %40 = call i64 @obs_data_item_get_int(%struct.obs_data_item* %39)
  store i64 %40, i64* %10, align 8
  %41 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %42 = call i64 @obs_data_item_get_int(%struct.obs_data_item* %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @UINT32_MAX, align 8
  %45 = call i64 @CLAMP(i64 %43, i32 0, i64 %44)
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.media_frames_per_second*, %struct.media_frames_per_second** %6, align 8
  %48 = getelementptr inbounds %struct.media_frames_per_second, %struct.media_frames_per_second* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @UINT32_MAX, align 8
  %51 = call i64 @CLAMP(i64 %49, i32 0, i64 %50)
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.media_frames_per_second*, %struct.media_frames_per_second** %6, align 8
  %54 = getelementptr inbounds %struct.media_frames_per_second, %struct.media_frames_per_second* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = call i32 @obs_data_item_release(%struct.obs_data_item** %8)
  %56 = call i32 @obs_data_item_release(%struct.obs_data_item** %9)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @obs_data_release(i32* %57)
  %59 = load %struct.media_frames_per_second*, %struct.media_frames_per_second** %6, align 8
  %60 = bitcast %struct.media_frames_per_second* %59 to { i8*, i8* }*
  %61 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %60, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @media_frames_per_second_is_valid(i8* %62, i8* %64)
  store i32 %65, i32* %4, align 4
  br label %69

66:                                               ; preds = %35, %24
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @obs_data_release(i32* %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %38, %20, %14
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @get_option(i32*, i8**) #1

declare dso_local %struct.obs_data_item* @obs_data_item_byname(i32*, i8*) #1

declare dso_local i32 @obs_data_item_release(%struct.obs_data_item**) #1

declare dso_local i64 @obs_data_item_get_int(%struct.obs_data_item*) #1

declare dso_local i64 @CLAMP(i64, i32, i64) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @media_frames_per_second_is_valid(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
