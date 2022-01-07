; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_get_delay_pulse.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_get_delay_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32, i32 }

@PA_ERR_NODATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"pa_stream_get_latency() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.ao*)* @get_delay_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_delay_pulse(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca double, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %5 = load %struct.ao*, %struct.ao** %2, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  store double -1.000000e+00, double* %4, align 8
  %8 = load %struct.priv*, %struct.priv** %3, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pa_threaded_mainloop_lock(i32 %10)
  br label %12

12:                                               ; preds = %27, %1
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @pa_stream_get_latency(i32 %15, double* %4, i32* null)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.priv*, %struct.priv** %3, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @pa_context_errno(i32 %21)
  %23 = load i64, i64* @PA_ERR_NODATA, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @GENERIC_ERR_MSG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %32

27:                                               ; preds = %18
  %28 = load %struct.priv*, %struct.priv** %3, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pa_threaded_mainloop_wait(i32 %30)
  br label %12

32:                                               ; preds = %25, %12
  %33 = load %struct.priv*, %struct.priv** %3, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pa_threaded_mainloop_unlock(i32 %35)
  %37 = load double, double* %4, align 8
  %38 = fcmp oeq double %37, -1.000000e+00
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %43

40:                                               ; preds = %32
  %41 = load double, double* %4, align 8
  %42 = fdiv double %41, 1.000000e+06
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi double [ 0.000000e+00, %39 ], [ %42, %40 ]
  ret double %44
}

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i64 @pa_stream_get_latency(i32, double*, i32*) #1

declare dso_local i64 @pa_context_errno(i32) #1

declare dso_local i32 @GENERIC_ERR_MSG(i8*) #1

declare dso_local i32 @pa_threaded_mainloop_wait(i32) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
