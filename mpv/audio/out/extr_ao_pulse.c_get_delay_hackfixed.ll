; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_get_delay_hackfixed.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_get_delay_hackfixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32, i64, i64, i64 }
%struct.pa_sample_spec = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"pa_stream_update_timing_info() failed\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"pa_stream_get_timing_info() failed\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"pa_stream_get_sample_spec() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.ao*)* @get_delay_hackfixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_delay_hackfixed(%struct.ao* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.pa_sample_spec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  %9 = load %struct.ao*, %struct.ao** %3, align 8
  %10 = getelementptr inbounds %struct.ao, %struct.ao* %9, i32 0, i32 0
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %4, align 8
  %12 = load %struct.priv*, %struct.priv** %4, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pa_threaded_mainloop_lock(i32 %14)
  %16 = load %struct.priv*, %struct.priv** %4, align 8
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pa_stream_update_timing_info(i32 %19, i32* null, i32* null)
  %21 = call i32 @waitop(%struct.priv* %16, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = call i32 @GENERIC_ERR_MSG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store double 0.000000e+00, double* %2, align 8
  br label %104

25:                                               ; preds = %1
  %26 = load %struct.priv*, %struct.priv** %4, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pa_threaded_mainloop_lock(i32 %28)
  %30 = load %struct.priv*, %struct.priv** %4, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_3__* @pa_stream_get_timing_info(i32 %32)
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %5, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %25
  %37 = load %struct.priv*, %struct.priv** %4, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pa_threaded_mainloop_unlock(i32 %39)
  %41 = call i32 @GENERIC_ERR_MSG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store double 0.000000e+00, double* %2, align 8
  br label %104

42:                                               ; preds = %25
  %43 = load %struct.priv*, %struct.priv** %4, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.pa_sample_spec* @pa_stream_get_sample_spec(i32 %45)
  store %struct.pa_sample_spec* %46, %struct.pa_sample_spec** %6, align 8
  %47 = load %struct.pa_sample_spec*, %struct.pa_sample_spec** %6, align 8
  %48 = icmp ne %struct.pa_sample_spec* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load %struct.priv*, %struct.priv** %4, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pa_threaded_mainloop_unlock(i32 %52)
  %54 = call i32 @GENERIC_ERR_MSG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store double 0.000000e+00, double* %2, align 8
  br label %104

55:                                               ; preds = %42
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = load %struct.pa_sample_spec*, %struct.pa_sample_spec** %6, align 8
  %64 = call i64 @pa_bytes_to_usec(i64 %62, %struct.pa_sample_spec* %63)
  store i64 %64, i64* %7, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = sub nsw i64 %68, %67
  store i64 %69, i64* %7, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %8, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %55
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.pa_sample_spec*, %struct.pa_sample_spec** %6, align 8
  %82 = call i64 @pa_bytes_to_usec(i64 %80, %struct.pa_sample_spec* %81)
  %83 = load i64, i64* %8, align 8
  %84 = sub nsw i64 %83, %82
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %77, %55
  %86 = load i64, i64* %8, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i64, i64* %7, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i64 0, i64* %7, align 8
  br label %96

96:                                               ; preds = %95, %92
  %97 = load %struct.priv*, %struct.priv** %4, align 8
  %98 = getelementptr inbounds %struct.priv, %struct.priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pa_threaded_mainloop_unlock(i32 %99)
  %101 = load i64, i64* %7, align 8
  %102 = sitofp i64 %101 to double
  %103 = fdiv double %102, 1.000000e+06
  store double %103, double* %2, align 8
  br label %104

104:                                              ; preds = %96, %49, %36, %23
  %105 = load double, double* %2, align 8
  ret double %105
}

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32 @waitop(%struct.priv*, i32) #1

declare dso_local i32 @pa_stream_update_timing_info(i32, i32*, i32*) #1

declare dso_local i32 @GENERIC_ERR_MSG(i8*) #1

declare dso_local %struct.TYPE_3__* @pa_stream_get_timing_info(i32) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

declare dso_local %struct.pa_sample_spec* @pa_stream_get_sample_spec(i32) #1

declare dso_local i64 @pa_bytes_to_usec(i64, %struct.pa_sample_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
