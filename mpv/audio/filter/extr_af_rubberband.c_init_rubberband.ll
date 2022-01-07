; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_rubberband.c_init_rubberband.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_rubberband.c_init_rubberband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@RubberBandOptionProcessRealTime = common dso_local global i32 0, align 4
@AF_FORMAT_FLOATP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"librubberband initialization failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*)* @init_rubberband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rubberband(%struct.mp_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %9 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %8, i32 0, i32 0
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %4, align 8
  %11 = load %struct.priv*, %struct.priv** %4, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.priv*, %struct.priv** %4, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 5
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %26, %31
  %33 = load %struct.priv*, %struct.priv** %4, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 5
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %32, %37
  %39 = load %struct.priv*, %struct.priv** %4, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 5
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %38, %43
  %45 = load %struct.priv*, %struct.priv** %4, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 5
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %44, %49
  %51 = load %struct.priv*, %struct.priv** %4, align 8
  %52 = getelementptr inbounds %struct.priv, %struct.priv* %51, i32 0, i32 5
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %50, %55
  %57 = load %struct.priv*, %struct.priv** %4, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 5
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %56, %61
  %63 = load %struct.priv*, %struct.priv** %4, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 5
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %62, %67
  %69 = load i32, i32* @RubberBandOptionProcessRealTime, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %5, align 4
  %71 = load %struct.priv*, %struct.priv** %4, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @mp_aframe_get_rate(i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.priv*, %struct.priv** %4, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @mp_aframe_get_channels(i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.priv*, %struct.priv** %4, align 8
  %80 = getelementptr inbounds %struct.priv, %struct.priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @mp_aframe_get_format(i32 %81)
  %83 = load i64, i64* @AF_FORMAT_FLOATP, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %118

86:                                               ; preds = %1
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i64 @rubberband_new(i32 %87, i32 %88, i32 %89, double 1.000000e+00, double 1.000000e+00)
  %91 = load %struct.priv*, %struct.priv** %4, align 8
  %92 = getelementptr inbounds %struct.priv, %struct.priv* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  %93 = load %struct.priv*, %struct.priv** %4, align 8
  %94 = getelementptr inbounds %struct.priv, %struct.priv* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %86
  %98 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %99 = call i32 @MP_FATAL(%struct.mp_filter* %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %118

100:                                              ; preds = %86
  %101 = load %struct.priv*, %struct.priv** %4, align 8
  %102 = getelementptr inbounds %struct.priv, %struct.priv* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.priv*, %struct.priv** %4, align 8
  %105 = getelementptr inbounds %struct.priv, %struct.priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @mp_aframe_config_copy(i32 %103, i32 %106)
  %108 = load %struct.priv*, %struct.priv** %4, align 8
  %109 = load %struct.priv*, %struct.priv** %4, align 8
  %110 = getelementptr inbounds %struct.priv, %struct.priv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @update_speed(%struct.priv* %108, i32 %111)
  %113 = load %struct.priv*, %struct.priv** %4, align 8
  %114 = load %struct.priv*, %struct.priv** %4, align 8
  %115 = getelementptr inbounds %struct.priv, %struct.priv* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @update_pitch(%struct.priv* %113, i32 %116)
  store i32 1, i32* %2, align 4
  br label %118

118:                                              ; preds = %100, %97, %85
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_aframe_get_rate(i32) #1

declare dso_local i32 @mp_aframe_get_channels(i32) #1

declare dso_local i64 @mp_aframe_get_format(i32) #1

declare dso_local i64 @rubberband_new(i32, i32, i32, double, double) #1

declare dso_local i32 @MP_FATAL(%struct.mp_filter*, i8*) #1

declare dso_local i32 @mp_aframe_config_copy(i32, i32) #1

declare dso_local i32 @update_speed(%struct.priv*, i32) #1

declare dso_local i32 @update_pitch(%struct.priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
