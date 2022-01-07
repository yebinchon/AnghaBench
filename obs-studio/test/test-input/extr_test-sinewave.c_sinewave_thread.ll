; ModuleID = '/home/carl/AnghaBench/obs-studio/test/test-input/extr_test-sinewave.c_sinewave_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/test/test-input/extr_test-sinewave.c_sinewave_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sinewave_data = type { i32, i32 }
%struct.obs_source_audio = type { i32, i32, i32, i32, i32, i64** }

@EAGAIN = common dso_local global i64 0, align 8
@rate = common dso_local global double 0.000000e+00, align 8
@M_PI_X2 = common dso_local global double 0.000000e+00, align 8
@SPEAKERS_MONO = common dso_local global i32 0, align 4
@AUDIO_FORMAT_U8BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @sinewave_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sinewave_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sinewave_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca [480 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.obs_source_audio, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.sinewave_data*
  store %struct.sinewave_data* %12, %struct.sinewave_data** %3, align 8
  %13 = call i32 (...) @os_gettime_ns()
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store double 0.000000e+00, double* %6, align 8
  br label %14

14:                                               ; preds = %59, %1
  %15 = load %struct.sinewave_data*, %struct.sinewave_data** %3, align 8
  %16 = getelementptr inbounds %struct.sinewave_data, %struct.sinewave_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @os_event_try(i32 %17)
  %19 = load i64, i64* @EAGAIN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 10000000
  store i32 %23, i32* %4, align 4
  %24 = call i32 @os_sleepto_ns(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = call i32 (...) @os_gettime_ns()
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %21
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %56, %28
  %30 = load i64, i64* %8, align 8
  %31 = icmp ult i64 %30, 480
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load double, double* @rate, align 8
  %34 = load double, double* @M_PI_X2, align 8
  %35 = fmul double %33, %34
  %36 = load double, double* %6, align 8
  %37 = fadd double %36, %35
  store double %37, double* %6, align 8
  %38 = load double, double* %6, align 8
  %39 = load double, double* @M_PI_X2, align 8
  %40 = fcmp ogt double %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load double, double* @M_PI_X2, align 8
  %43 = load double, double* %6, align 8
  %44 = fsub double %43, %42
  store double %44, double* %6, align 8
  br label %45

45:                                               ; preds = %41, %32
  %46 = load double, double* %6, align 8
  %47 = call double @cos(double %46) #3
  %48 = fmul double %47, 5.000000e-01
  store double %48, double* %9, align 8
  %49 = load double, double* %9, align 8
  %50 = fadd double %49, 1.000000e+00
  %51 = fmul double %50, 5.000000e-01
  %52 = fmul double %51, 2.550000e+02
  %53 = fptosi double %52 to i64
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds [480 x i64], [480 x i64]* %7, i64 0, i64 %54
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %45
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %8, align 8
  br label %29

59:                                               ; preds = %29
  %60 = getelementptr inbounds [480 x i64], [480 x i64]* %7, i64 0, i64 0
  %61 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %10, i32 0, i32 5
  %62 = load i64**, i64*** %61, align 8
  %63 = getelementptr inbounds i64*, i64** %62, i64 0
  store i64* %60, i64** %63, align 8
  %64 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %10, i32 0, i32 0
  store i32 480, i32* %64, align 8
  %65 = load i32, i32* @SPEAKERS_MONO, align 4
  %66 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %10, i32 0, i32 4
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %10, i32 0, i32 1
  store i32 48000, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %10, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load i32, i32* @AUDIO_FORMAT_U8BIT, align 4
  %71 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %10, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = load %struct.sinewave_data*, %struct.sinewave_data** %3, align 8
  %73 = getelementptr inbounds %struct.sinewave_data, %struct.sinewave_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @obs_source_output_audio(i32 %74, %struct.obs_source_audio* %10)
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 10000000
  store i32 %77, i32* %5, align 4
  br label %14

78:                                               ; preds = %14
  ret i8* null
}

declare dso_local i32 @os_gettime_ns(...) #1

declare dso_local i64 @os_event_try(i32) #1

declare dso_local i32 @os_sleepto_ns(i32) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

declare dso_local i32 @obs_source_output_audio(i32, %struct.obs_source_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
