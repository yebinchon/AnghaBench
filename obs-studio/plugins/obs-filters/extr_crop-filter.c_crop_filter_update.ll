; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_crop-filter.c_crop_filter_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_crop-filter.c_crop_filter_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crop_filter_data = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"cy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @crop_filter_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crop_filter_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.crop_filter_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.crop_filter_data*
  store %struct.crop_filter_data* %7, %struct.crop_filter_data** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @obs_data_get_bool(i32* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load %struct.crop_filter_data*, %struct.crop_filter_data** %5, align 8
  %14 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @obs_data_get_int(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %17 = trunc i64 %16 to i32
  %18 = load %struct.crop_filter_data*, %struct.crop_filter_data** %5, align 8
  %19 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @obs_data_get_int(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %22 = trunc i64 %21 to i32
  %23 = load %struct.crop_filter_data*, %struct.crop_filter_data** %5, align 8
  %24 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @obs_data_get_int(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %27 = trunc i64 %26 to i32
  %28 = load %struct.crop_filter_data*, %struct.crop_filter_data** %5, align 8
  %29 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @obs_data_get_int(i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %32 = trunc i64 %31 to i32
  %33 = load %struct.crop_filter_data*, %struct.crop_filter_data** %5, align 8
  %34 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @obs_data_get_int(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %37 = trunc i64 %36 to i32
  %38 = load %struct.crop_filter_data*, %struct.crop_filter_data** %5, align 8
  %39 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @obs_data_get_int(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %42 = trunc i64 %41 to i32
  %43 = load %struct.crop_filter_data*, %struct.crop_filter_data** %5, align 8
  %44 = getelementptr inbounds %struct.crop_filter_data, %struct.crop_filter_data* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  ret void
}

declare dso_local i32 @obs_data_get_bool(i32*, i8*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
