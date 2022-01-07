; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_format.c_af_format_create.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_format.c_af_format_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32*, %struct.priv* }
%struct.priv = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i64, i32* }
%struct.mp_autoconvert = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@af_format_filter = common dso_local global i32 0, align 4
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_filter* (%struct.mp_filter*, i8*)* @af_format_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_filter* @af_format_create(%struct.mp_filter* %0, i8* %1) #0 {
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mp_filter*, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca %struct.mp_autoconvert*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %10 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %9, i32* @af_format_filter)
  store %struct.mp_filter* %10, %struct.mp_filter** %6, align 8
  %11 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %12 = icmp ne %struct.mp_filter* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @talloc_free(i8* %14)
  store %struct.mp_filter* null, %struct.mp_filter** %3, align 8
  br label %109

16:                                               ; preds = %2
  %17 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %18 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %17, i32 0, i32 1
  %19 = load %struct.priv*, %struct.priv** %18, align 8
  store %struct.priv* %19, %struct.priv** %7, align 8
  %20 = load %struct.priv*, %struct.priv** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct.TYPE_6__* @talloc_steal(%struct.priv* %20, i8* %21)
  %23 = load %struct.priv*, %struct.priv** %7, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 1
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %24, align 8
  %25 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %26 = load i32, i32* @MP_PIN_IN, align 4
  %27 = call i32 @mp_filter_add_pin(%struct.mp_filter* %25, i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %29 = load i32, i32* @MP_PIN_OUT, align 4
  %30 = call i32 @mp_filter_add_pin(%struct.mp_filter* %28, i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %32 = call %struct.mp_autoconvert* @mp_autoconvert_create(%struct.mp_filter* %31)
  store %struct.mp_autoconvert* %32, %struct.mp_autoconvert** %8, align 8
  %33 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %34 = icmp ne %struct.mp_autoconvert* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %16
  %36 = call i32 (...) @abort() #3
  unreachable

37:                                               ; preds = %16
  %38 = load %struct.priv*, %struct.priv** %7, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %46 = load %struct.priv*, %struct.priv** %7, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @mp_autoconvert_add_afmt(%struct.mp_autoconvert* %45, i64 %50)
  br label %52

52:                                               ; preds = %44, %37
  %53 = load %struct.priv*, %struct.priv** %7, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %61 = load %struct.priv*, %struct.priv** %7, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @mp_autoconvert_add_srate(%struct.mp_autoconvert* %60, i64 %65)
  br label %67

67:                                               ; preds = %59, %52
  %68 = load %struct.priv*, %struct.priv** %7, align 8
  %69 = getelementptr inbounds %struct.priv, %struct.priv* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %67
  %76 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %77 = load %struct.priv*, %struct.priv** %7, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = call i32 @mp_autoconvert_add_chmap(%struct.mp_autoconvert* %76, i32* %83)
  br label %85

85:                                               ; preds = %75, %67
  %86 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %87 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %94 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mp_pin_connect(i32 %92, i32 %97)
  %99 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %8, align 8
  %100 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.priv*, %struct.priv** %7, align 8
  %107 = getelementptr inbounds %struct.priv, %struct.priv* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  store %struct.mp_filter* %108, %struct.mp_filter** %3, align 8
  br label %109

109:                                              ; preds = %85, %13
  %110 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  ret %struct.mp_filter* %110
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local %struct.TYPE_6__* @talloc_steal(%struct.priv*, i8*) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

declare dso_local %struct.mp_autoconvert* @mp_autoconvert_create(%struct.mp_filter*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mp_autoconvert_add_afmt(%struct.mp_autoconvert*, i64) #1

declare dso_local i32 @mp_autoconvert_add_srate(%struct.mp_autoconvert*, i64) #1

declare dso_local i32 @mp_autoconvert_add_chmap(%struct.mp_autoconvert*, i32*) #1

declare dso_local i32 @mp_pin_connect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
