; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_resolution_selected.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_resolution_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"device_id\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"framerate\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"pixelformat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @resolution_selected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolution_selected(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @UNUSED_PARAMETER(i32* %12)
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @obs_data_get_string(i32* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = load i32, i32* @O_NONBLOCK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @v4l2_open(i32 %15, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = call i32* @obs_properties_get(i32* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @obs_data_get_int(i32* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @v4l2_unpack_tuple(i32* %8, i32* %9, i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @obs_data_get_int(i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @v4l2_framerate_list(i32 %29, i32 %31, i32 %32, i32 %33, i32* %34)
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @v4l2_close(i32 %36)
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @obs_property_modified(i32* %38, i32* %39)
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %23, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @v4l2_open(i32, i32) #1

declare dso_local i32 @obs_data_get_string(i32*, i8*) #1

declare dso_local i32* @obs_properties_get(i32*, i8*) #1

declare dso_local i32 @v4l2_unpack_tuple(i32*, i32*, i32) #1

declare dso_local i32 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32 @v4l2_framerate_list(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @v4l2_close(i32) #1

declare dso_local i32 @obs_property_modified(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
