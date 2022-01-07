; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-nvenc.c_rate_control_modified.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-nvenc.c_rate_control_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"rate_control\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CQP\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"VBR\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"lossless\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"max_bitrate\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"cqp\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @rate_control_modified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rate_control_modified(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i8* @obs_data_get_string(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @astrcmpi(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @astrcmpi(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @astrcmpi(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32* @obs_properties_get(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %3
  %38 = phi i1 [ false, %3 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @obs_property_set_visible(i32* %30, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32* @obs_properties_get(i32* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32* %42, i32** %5, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @obs_property_set_visible(i32* %43, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @obs_properties_get(i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @obs_property_set_visible(i32* %48, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32* @obs_properties_get(i32* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32* %52, i32** %5, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i64 @obs_property_list_item_count(i32* %53)
  store i64 %54, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %55

55:                                               ; preds = %80, %37
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load i64, i64* %12, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %12, align 8
  %64 = icmp eq i64 %63, 3
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i1 [ true, %59 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %72, %65
  %77 = phi i1 [ false, %65 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @obs_property_list_item_disable(i32* %68, i64 %69, i32 %78)
  br label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %12, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %12, align 8
  br label %55

83:                                               ; preds = %55
  ret i32 1
}

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i64 @astrcmpi(i8*, i8*) #1

declare dso_local i32* @obs_properties_get(i32*, i8*) #1

declare dso_local i32 @obs_property_set_visible(i32*, i32) #1

declare dso_local i64 @obs_property_list_item_count(i32*) #1

declare dso_local i32 @obs_property_list_item_disable(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
