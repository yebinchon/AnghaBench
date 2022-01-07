; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_device_selected.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_device_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"device_id\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @device_selected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_selected(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @obs_data_get_string(i32* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = load i32, i32* @O_NONBLOCK, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @v4l2_open(i32 %11, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 1
  %22 = call i32 @v4l2_props_set_enabled(i32* %16, i32* %17, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @obs_properties_get(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @v4l2_input_list(i32 %29, i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @v4l2_close(i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @obs_property_modified(i32* %34, i32* %35)
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %26, %25
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @v4l2_open(i32, i32) #1

declare dso_local i32 @obs_data_get_string(i32*, i8*) #1

declare dso_local i32 @v4l2_props_set_enabled(i32*, i32*, i32) #1

declare dso_local i32* @obs_properties_get(i32*, i8*) #1

declare dso_local i32 @v4l2_input_list(i32, i32*) #1

declare dso_local i32 @v4l2_close(i32) #1

declare dso_local i32 @obs_property_modified(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
