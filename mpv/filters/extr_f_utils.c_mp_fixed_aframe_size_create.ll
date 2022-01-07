; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_mp_fixed_aframe_size_create.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_mp_fixed_aframe_size_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.fixed_aframe_size_priv* }
%struct.fixed_aframe_size_priv = type { i32, i32, i32 }

@fixed_aframe_size_filter = common dso_local global i32 0, align 4
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_filter* @mp_fixed_aframe_size_create(%struct.mp_filter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.mp_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mp_filter*, align 8
  %9 = alloca %struct.fixed_aframe_size_priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.mp_filter* null, %struct.mp_filter** %4, align 8
  br label %40

13:                                               ; preds = %3
  %14 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %15 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %14, i32* @fixed_aframe_size_filter)
  store %struct.mp_filter* %15, %struct.mp_filter** %8, align 8
  %16 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %17 = icmp ne %struct.mp_filter* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.mp_filter* null, %struct.mp_filter** %4, align 8
  br label %40

19:                                               ; preds = %13
  %20 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %21 = load i32, i32* @MP_PIN_IN, align 4
  %22 = call i32 @mp_filter_add_pin(%struct.mp_filter* %20, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %24 = load i32, i32* @MP_PIN_OUT, align 4
  %25 = call i32 @mp_filter_add_pin(%struct.mp_filter* %23, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %27 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %26, i32 0, i32 0
  %28 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %27, align 8
  store %struct.fixed_aframe_size_priv* %28, %struct.fixed_aframe_size_priv** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %9, align 8
  %31 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %9, align 8
  %34 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %9, align 8
  %36 = call i32 @mp_aframe_pool_create(%struct.fixed_aframe_size_priv* %35)
  %37 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %9, align 8
  %38 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  store %struct.mp_filter* %39, %struct.mp_filter** %4, align 8
  br label %40

40:                                               ; preds = %19, %18, %12
  %41 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  ret %struct.mp_filter* %41
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

declare dso_local i32 @mp_aframe_pool_create(%struct.fixed_aframe_size_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
