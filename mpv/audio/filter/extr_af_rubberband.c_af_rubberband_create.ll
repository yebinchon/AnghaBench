; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_rubberband.c_af_rubberband_create.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_rubberband.c_af_rubberband_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32*, %struct.priv* }
%struct.priv = type { double, i32, i32, i8*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mp_autoconvert = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@af_rubberband_filter = common dso_local global i32 0, align 4
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@AF_FORMAT_FLOATP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_filter* (%struct.mp_filter*, i8*)* @af_rubberband_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_filter* @af_rubberband_create(%struct.mp_filter* %0, i8* %1) #0 {
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mp_filter*, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca %struct.mp_autoconvert*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %10 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %9, i32* @af_rubberband_filter)
  store %struct.mp_filter* %10, %struct.mp_filter** %6, align 8
  %11 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %12 = icmp ne %struct.mp_filter* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @talloc_free(i8* %14)
  store %struct.mp_filter* null, %struct.mp_filter** %3, align 8
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %18 = load i32, i32* @MP_PIN_IN, align 4
  %19 = call i32 @mp_filter_add_pin(%struct.mp_filter* %17, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %21 = load i32, i32* @MP_PIN_OUT, align 4
  %22 = call i32 @mp_filter_add_pin(%struct.mp_filter* %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %24 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %23, i32 0, i32 1
  %25 = load %struct.priv*, %struct.priv** %24, align 8
  store %struct.priv* %25, %struct.priv** %7, align 8
  %26 = load %struct.priv*, %struct.priv** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @talloc_steal(%struct.priv* %26, i8* %27)
  %29 = bitcast i8* %28 to %struct.TYPE_3__*
  %30 = load %struct.priv*, %struct.priv** %7, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 4
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %31, align 8
  %32 = load %struct.priv*, %struct.priv** %7, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 0
  store double 1.000000e+00, double* %33, align 8
  %34 = load %struct.priv*, %struct.priv** %7, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.priv*, %struct.priv** %7, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.priv*, %struct.priv** %7, align 8
  %42 = call i8* (...) @mp_aframe_create()
  %43 = call i8* @talloc_steal(%struct.priv* %41, i8* %42)
  %44 = load %struct.priv*, %struct.priv** %7, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.priv*, %struct.priv** %7, align 8
  %47 = call i32 @mp_aframe_pool_create(%struct.priv* %46)
  %48 = load %struct.priv*, %struct.priv** %7, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %51 = call %struct.mp_autoconvert* @mp_autoconvert_create(%struct.mp_filter* %50)
  store %struct.mp_autoconvert* %51, %struct.mp_autoconvert** %8, align 8
  %52 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %53 = icmp ne %struct.mp_autoconvert* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %16
  %55 = call i32 (...) @abort() #3
  unreachable

56:                                               ; preds = %16
  %57 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %58 = load i32, i32* @AF_FORMAT_FLOATP, align 4
  %59 = call i32 @mp_autoconvert_add_afmt(%struct.mp_autoconvert* %57, i32 %58)
  %60 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %61 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %68 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mp_pin_connect(i32 %66, i32 %71)
  %73 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %74 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.priv*, %struct.priv** %7, align 8
  %81 = getelementptr inbounds %struct.priv, %struct.priv* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  store %struct.mp_filter* %82, %struct.mp_filter** %3, align 8
  br label %83

83:                                               ; preds = %56, %13
  %84 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  ret %struct.mp_filter* %84
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

declare dso_local i8* @talloc_steal(%struct.priv*, i8*) #1

declare dso_local i8* @mp_aframe_create(...) #1

declare dso_local i32 @mp_aframe_pool_create(%struct.priv*) #1

declare dso_local %struct.mp_autoconvert* @mp_autoconvert_create(%struct.mp_filter*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mp_autoconvert_add_afmt(%struct.mp_autoconvert*, i32) #1

declare dso_local i32 @mp_pin_connect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
