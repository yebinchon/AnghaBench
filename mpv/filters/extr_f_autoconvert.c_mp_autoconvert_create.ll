; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_mp_autoconvert_create.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_mp_autoconvert_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_autoconvert = type { %struct.mp_filter* }
%struct.mp_filter = type { i32*, i32, %struct.priv* }
%struct.priv = type { double, %struct.mp_autoconvert, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@autoconvert_filter = common dso_local global i32 0, align 4
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_autoconvert* @mp_autoconvert_create(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_autoconvert*, align 8
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  %6 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %7 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %6, i32* @autoconvert_filter)
  store %struct.mp_filter* %7, %struct.mp_filter** %4, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %9 = icmp ne %struct.mp_filter* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.mp_autoconvert* null, %struct.mp_autoconvert** %2, align 8
  br label %50

11:                                               ; preds = %1
  %12 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %13 = load i32, i32* @MP_PIN_IN, align 4
  %14 = call i32 @mp_filter_add_pin(%struct.mp_filter* %12, i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %16 = load i32, i32* @MP_PIN_OUT, align 4
  %17 = call i32 @mp_filter_add_pin(%struct.mp_filter* %15, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %19 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %18, i32 0, i32 2
  %20 = load %struct.priv*, %struct.priv** %19, align 8
  store %struct.priv* %20, %struct.priv** %5, align 8
  %21 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %22 = load %struct.priv*, %struct.priv** %5, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %23, i32 0, i32 0
  store %struct.mp_filter* %21, %struct.mp_filter** %24, align 8
  %25 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %26 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.priv*, %struct.priv** %5, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.priv*, %struct.priv** %5, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 0
  store double 1.000000e+00, double* %31, align 8
  %32 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %33 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.priv*, %struct.priv** %5, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %41 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.priv*, %struct.priv** %5, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.priv*, %struct.priv** %5, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 1
  store %struct.mp_autoconvert* %49, %struct.mp_autoconvert** %2, align 8
  br label %50

50:                                               ; preds = %11, %10
  %51 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %2, align 8
  ret %struct.mp_autoconvert* %51
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
