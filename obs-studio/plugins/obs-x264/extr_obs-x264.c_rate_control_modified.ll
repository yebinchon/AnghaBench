; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_rate_control_modified.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_rate_control_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"rate_control\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"use_bufsize\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CBR\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ABR\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CRF\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
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
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i8* @obs_data_get_string(i32* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @obs_data_get_bool(i32* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @astrcmpi(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @astrcmpi(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i1 [ true, %3 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @astrcmpi(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32* @obs_properties_get(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @obs_property_set_visible(i32* %31, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @obs_properties_get(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @obs_property_set_visible(i32* %39, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32* @obs_properties_get(i32* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %46, i32** %5, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @obs_property_set_visible(i32* %47, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32* @obs_properties_get(i32* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32* %54, i32** %5, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %22
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %22
  %62 = phi i1 [ false, %22 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @obs_property_set_visible(i32* %55, i32 %63)
  ret i32 1
}

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i32 @obs_data_get_bool(i32*, i8*) #1

declare dso_local i64 @astrcmpi(i8*, i8*) #1

declare dso_local i32* @obs_properties_get(i32*, i8*) #1

declare dso_local i32 @obs_property_set_visible(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
