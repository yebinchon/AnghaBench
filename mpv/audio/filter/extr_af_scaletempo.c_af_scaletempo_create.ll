; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_af_scaletempo_create.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_af_scaletempo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32*, %struct.priv* }
%struct.priv = type { double, i32, i32, i8*, i8* }
%struct.mp_autoconvert = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@af_scaletempo_filter = common dso_local global i32 0, align 4
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@AF_FORMAT_S16 = common dso_local global i32 0, align 4
@AF_FORMAT_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_filter* (%struct.mp_filter*, i8*)* @af_scaletempo_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_filter* @af_scaletempo_create(%struct.mp_filter* %0, i8* %1) #0 {
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mp_filter*, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca %struct.mp_autoconvert*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %10 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %9, i32* @af_scaletempo_filter)
  store %struct.mp_filter* %10, %struct.mp_filter** %6, align 8
  %11 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %12 = icmp ne %struct.mp_filter* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @talloc_free(i8* %14)
  store %struct.mp_filter* null, %struct.mp_filter** %3, align 8
  br label %78

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
  %29 = load %struct.priv*, %struct.priv** %7, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load %struct.priv*, %struct.priv** %7, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 0
  store double 1.000000e+00, double* %32, align 8
  %33 = load %struct.priv*, %struct.priv** %7, align 8
  %34 = call i8* (...) @mp_aframe_create()
  %35 = call i8* @talloc_steal(%struct.priv* %33, i8* %34)
  %36 = load %struct.priv*, %struct.priv** %7, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.priv*, %struct.priv** %7, align 8
  %39 = call i32 @mp_aframe_pool_create(%struct.priv* %38)
  %40 = load %struct.priv*, %struct.priv** %7, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %43 = call %struct.mp_autoconvert* @mp_autoconvert_create(%struct.mp_filter* %42)
  store %struct.mp_autoconvert* %43, %struct.mp_autoconvert** %8, align 8
  %44 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %45 = icmp ne %struct.mp_autoconvert* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %16
  %47 = call i32 (...) @abort() #3
  unreachable

48:                                               ; preds = %16
  %49 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %50 = load i32, i32* @AF_FORMAT_S16, align 4
  %51 = call i32 @mp_autoconvert_add_afmt(%struct.mp_autoconvert* %49, i32 %50)
  %52 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %53 = load i32, i32* @AF_FORMAT_FLOAT, align 4
  %54 = call i32 @mp_autoconvert_add_afmt(%struct.mp_autoconvert* %52, i32 %53)
  %55 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %56 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %63 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mp_pin_connect(i32 %61, i32 %66)
  %68 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %69 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.priv*, %struct.priv** %7, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  store %struct.mp_filter* %77, %struct.mp_filter** %3, align 8
  br label %78

78:                                               ; preds = %48, %13
  %79 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  ret %struct.mp_filter* %79
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
