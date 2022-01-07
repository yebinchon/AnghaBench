; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_mp_hwupload_create.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_mp_hwupload_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_hwupload = type { %struct.mp_filter* }
%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { %struct.mp_hwupload }

@hwupload_filter = common dso_local global i32 0, align 4
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"hardware format not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_hwupload* @mp_hwupload_create(%struct.mp_filter* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_hwupload*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_filter*, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca %struct.mp_hwupload*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %10 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %9, i32* @hwupload_filter)
  store %struct.mp_filter* %10, %struct.mp_filter** %6, align 8
  %11 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %12 = icmp ne %struct.mp_filter* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.mp_hwupload* null, %struct.mp_hwupload** %3, align 8
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %16 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %15, i32 0, i32 0
  %17 = load %struct.priv*, %struct.priv** %16, align 8
  store %struct.priv* %17, %struct.priv** %7, align 8
  %18 = load %struct.priv*, %struct.priv** %7, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  store %struct.mp_hwupload* %19, %struct.mp_hwupload** %8, align 8
  %20 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %21 = load %struct.mp_hwupload*, %struct.mp_hwupload** %8, align 8
  %22 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %21, i32 0, i32 0
  store %struct.mp_filter* %20, %struct.mp_filter** %22, align 8
  %23 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %24 = load i32, i32* @MP_PIN_IN, align 4
  %25 = call i32 @mp_filter_add_pin(%struct.mp_filter* %23, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %27 = load i32, i32* @MP_PIN_OUT, align 4
  %28 = call i32 @mp_filter_add_pin(%struct.mp_filter* %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.mp_hwupload*, %struct.mp_hwupload** %8, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @probe_formats(%struct.mp_hwupload* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %14
  %34 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %35 = call i32 @MP_ERR(%struct.mp_filter* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %38

36:                                               ; preds = %14
  %37 = load %struct.mp_hwupload*, %struct.mp_hwupload** %8, align 8
  store %struct.mp_hwupload* %37, %struct.mp_hwupload** %3, align 8
  br label %41

38:                                               ; preds = %33
  %39 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %40 = call i32 @talloc_free(%struct.mp_filter* %39)
  store %struct.mp_hwupload* null, %struct.mp_hwupload** %3, align 8
  br label %41

41:                                               ; preds = %38, %36, %13
  %42 = load %struct.mp_hwupload*, %struct.mp_hwupload** %3, align 8
  ret %struct.mp_hwupload* %42
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

declare dso_local i32 @probe_formats(%struct.mp_hwupload*, i32) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*) #1

declare dso_local i32 @talloc_free(%struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
