; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi.c_get_device_delay.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi.c_get_device_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wasapi_state = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@S_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Possibly inaccurate device position.\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Insane qpc delay correction of %g seconds. Ignoring it.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Under-run: Device delay: %g us\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Device delay: %g us\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Error getting device delay: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wasapi_state*, double*)* @get_device_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_device_delay(%struct.wasapi_state* %0, double* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.wasapi_state*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca i32, align 4
  store %struct.wasapi_state* %0, %struct.wasapi_state** %4, align 8
  store double* %1, double** %5, align 8
  %14 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %15 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %14, i32 0, i32 4
  %16 = call i64 @atomic_load(i32* %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %18 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IAudioClock_GetPosition(i32 %19, i64* %7, i64* %8)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @EXIT_ON_ERROR(i64 %21)
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @S_FALSE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %28 = call i32 (%struct.wasapi_state*, i8*, ...) @MP_VERBOSE(%struct.wasapi_state* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %32 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %37 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @uint64_scale(i64 %30, i32 %35, i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %10, align 8
  %42 = sub nsw i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sitofp i32 %44 to double
  %46 = fmul double %45, 1.000000e+06
  %47 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %48 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %46, %52
  %54 = load double*, double** %5, align 8
  store double %53, double* %54, align 8
  %55 = call i32 @QueryPerformanceCounter(%struct.TYPE_9__* %12)
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %59 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @av_rescale(i32 %57, i32 10000000, i32 %61)
  %63 = load i64, i64* %8, align 8
  %64 = sub nsw i64 %62, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 100000000
  br i1 %67, label %68, label %75

68:                                               ; preds = %29
  %69 = load i32, i32* %13, align 4
  %70 = sitofp i32 %69 to double
  %71 = fdiv double %70, 1.000000e+01
  %72 = load double*, double** %5, align 8
  %73 = load double, double* %72, align 8
  %74 = fsub double %73, %71
  store double %74, double* %72, align 8
  br label %81

75:                                               ; preds = %29
  %76 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sitofp i32 %77 to double
  %79 = fdiv double %78, 1.000000e+07
  %80 = call i32 (%struct.wasapi_state*, i8*, ...) @MP_VERBOSE(%struct.wasapi_state* %76, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), double %79)
  br label %81

81:                                               ; preds = %75, %68
  %82 = load i64, i64* %6, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load double*, double** %5, align 8
  %86 = load double, double* %85, align 8
  %87 = fcmp ole double %86, 0.000000e+00
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %90 = load double*, double** %5, align 8
  %91 = load double, double* %90, align 8
  %92 = call i32 @MP_WARN(%struct.wasapi_state* %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), double %91)
  br label %98

93:                                               ; preds = %84, %81
  %94 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %95 = load double*, double** %5, align 8
  %96 = load double, double* %95, align 8
  %97 = call i32 @MP_TRACE(%struct.wasapi_state* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), double %96)
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i64, i64* @S_OK, align 8
  store i64 %99, i64* %3, align 8
  br label %106

100:                                              ; No predecessors!
  %101 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @mp_HRESULT_to_str(i64 %102)
  %104 = call i32 @MP_ERR(%struct.wasapi_state* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i64, i64* %9, align 8
  store i64 %105, i64* %3, align 8
  br label %106

106:                                              ; preds = %100, %98
  %107 = load i64, i64* %3, align 8
  ret i64 %107
}

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i64 @IAudioClock_GetPosition(i32, i64*, i64*) #1

declare dso_local i32 @EXIT_ON_ERROR(i64) #1

declare dso_local i32 @MP_VERBOSE(%struct.wasapi_state*, i8*, ...) #1

declare dso_local i64 @uint64_scale(i64, i32, i32) #1

declare dso_local i32 @QueryPerformanceCounter(%struct.TYPE_9__*) #1

declare dso_local i64 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @MP_WARN(%struct.wasapi_state*, i8*, double) #1

declare dso_local i32 @MP_TRACE(%struct.wasapi_state*, i8*, double) #1

declare dso_local i32 @MP_ERR(%struct.wasapi_state*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
