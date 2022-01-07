; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_freq-step.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_freq-step.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sample = type { i32 }

@SAMPLES = common dso_local global i32 0, align 4
@MEAN_SAMPLE_INTERVAL = common dso_local global i32 0, align 4
@STEP_INTERVAL = common dso_local global i32 0, align 4
@mono_freq_offset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"CLOCK_MONOTONIC_RAW frequency offset: %11.3f ppm\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%6.0f %+10.3f %6.0f %7.0f %+10.3f %6.0f %7.0f\09\00", align 1
@MAX_FREQ_ERROR = common dso_local global i64 0, align 8
@MAX_STDDEV = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"[FAIL]\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, double, double)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test(i32 %0, double %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %20 = load i32, i32* @SAMPLES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca %struct.sample, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load double, double* %6, align 8
  %25 = call i32 @set_frequency(double %24)
  store i32 0, i32* %18, align 4
  br label %26

26:                                               ; preds = %36, %3
  %27 = load i32, i32* %18, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* @MEAN_SAMPLE_INTERVAL, align 4
  %31 = sitofp i32 %30 to double
  %32 = fmul double 1.000000e+06, %31
  %33 = fdiv double %32, 1.000000e+01
  %34 = fptosi double %33 to i32
  %35 = call i32 @usleep(i32 %34)
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %18, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %18, align 4
  br label %26

39:                                               ; preds = %26
  %40 = call i32 (...) @reset_ntp_error()
  %41 = load double, double* %6, align 8
  %42 = load double, double* %7, align 8
  %43 = fadd double %41, %42
  %44 = call i32 @set_frequency(double %43)
  store i32 0, i32* %18, align 4
  br label %45

45:                                               ; preds = %55, %39
  %46 = load i32, i32* %18, align 4
  %47 = icmp slt i32 %46, 10
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = call i32 (...) @rand()
  %50 = srem i32 %49, 2000000
  %51 = load i32, i32* @STEP_INTERVAL, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sdiv i32 %52, 10
  %54 = call i32 @usleep(i32 %53)
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %18, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %18, align 4
  br label %45

58:                                               ; preds = %45
  %59 = load double, double* %6, align 8
  %60 = call i32 @set_frequency(double %59)
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %75, %58
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* @SAMPLES, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = call i32 (...) @rand()
  %67 = srem i32 %66, 2000000
  %68 = load i32, i32* @MEAN_SAMPLE_INTERVAL, align 4
  %69 = mul nsw i32 %67, %68
  %70 = call i32 @usleep(i32 %69)
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.sample, %struct.sample* %23, i64 %72
  %74 = call i32 @get_sample(%struct.sample* %73)
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %18, align 4
  br label %61

78:                                               ; preds = %61
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32, i32* @SAMPLES, align 4
  %83 = call i32 @regress(%struct.sample* %23, i32 %82, double* %10, double* %11, double* %12, double* %13)
  %84 = load double, double* %11, align 8
  %85 = fptosi double %84 to i32
  store i32 %85, i32* @mono_freq_offset, align 4
  %86 = load i32, i32* @mono_freq_offset, align 4
  %87 = sitofp i32 %86 to double
  %88 = fmul double 1.000000e+06, %87
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), double %88)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %148

90:                                               ; preds = %78
  %91 = load i32, i32* @SAMPLES, align 4
  %92 = sdiv i32 %91, 2
  %93 = call i32 @regress(%struct.sample* %23, i32 %92, double* %10, double* %11, double* %12, double* %13)
  %94 = load double, double* %11, align 8
  %95 = load i32, i32* @mono_freq_offset, align 4
  %96 = sitofp i32 %95 to double
  %97 = fsub double 1.000000e+00, %96
  %98 = fmul double %94, %97
  %99 = load i32, i32* @mono_freq_offset, align 4
  %100 = sitofp i32 %99 to double
  %101 = fsub double %98, %100
  %102 = load double, double* %6, align 8
  %103 = fsub double %101, %102
  store double %103, double* %16, align 8
  %104 = load i32, i32* @SAMPLES, align 4
  %105 = sdiv i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.sample, %struct.sample* %23, i64 %106
  %108 = load i32, i32* @SAMPLES, align 4
  %109 = sdiv i32 %108, 2
  %110 = call i32 @regress(%struct.sample* %107, i32 %109, double* %10, double* %11, double* %14, double* %15)
  %111 = load double, double* %11, align 8
  %112 = load i32, i32* @mono_freq_offset, align 4
  %113 = sitofp i32 %112 to double
  %114 = fsub double 1.000000e+00, %113
  %115 = fmul double %111, %114
  %116 = load i32, i32* @mono_freq_offset, align 4
  %117 = sitofp i32 %116 to double
  %118 = fsub double %115, %117
  %119 = load double, double* %6, align 8
  %120 = fsub double %118, %119
  store double %120, double* %17, align 8
  %121 = load double, double* %7, align 8
  %122 = fmul double 1.000000e+06, %121
  %123 = load double, double* %16, align 8
  %124 = fmul double 1.000000e+06, %123
  %125 = load double, double* %12, align 8
  %126 = fmul double 1.000000e+09, %125
  %127 = load double, double* %13, align 8
  %128 = fmul double 1.000000e+09, %127
  %129 = load double, double* %17, align 8
  %130 = fmul double 1.000000e+06, %129
  %131 = load double, double* %14, align 8
  %132 = fmul double 1.000000e+09, %131
  %133 = load double, double* %15, align 8
  %134 = fmul double 1.000000e+09, %133
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), double %122, double %124, double %126, double %128, double %130, double %132, double %134)
  %136 = load double, double* %17, align 8
  %137 = call i64 @fabs(double %136)
  %138 = load i64, i64* @MAX_FREQ_ERROR, align 8
  %139 = icmp sgt i64 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %90
  %141 = load double, double* %14, align 8
  %142 = load double, double* @MAX_STDDEV, align 8
  %143 = fcmp ogt double %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140, %90
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %148

146:                                              ; preds = %140
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %148

148:                                              ; preds = %146, %144, %81
  %149 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @set_frequency(double) #2

declare dso_local i32 @usleep(i32) #2

declare dso_local i32 @reset_ntp_error(...) #2

declare dso_local i32 @rand(...) #2

declare dso_local i32 @get_sample(%struct.sample*) #2

declare dso_local i32 @regress(%struct.sample*, i32, double*, double*, double*, double*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @fabs(double) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
