; ModuleID = '/home/carl/AnghaBench/numpy/numpy/fft/extr__pocketfft.c_make_rfft_plan.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/fft/extr__pocketfft.c_make_rfft_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }

@rfft_plan_i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i64)* @make_rfft_plan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @make_rfft_plan(i64 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %89

10:                                               ; preds = %1
  %11 = load i32, i32* @rfft_plan_i, align 4
  %12 = call %struct.TYPE_5__* @RALLOC(i32 %11, i32 1)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %89

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i8* null, i8** %20, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp ult i64 %21, 50
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @largest_prime_factor(i64 %24)
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @sqrt(i64 %26)
  %28 = icmp sle i64 %25, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23, %16
  %30 = load i64, i64* %3, align 8
  %31 = call i8* @make_rfftp_plan(i64 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = call i32 @DEALLOC(%struct.TYPE_5__* %39)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %89

41:                                               ; preds = %29
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %2, align 8
  br label %89

43:                                               ; preds = %23
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @cost_guess(i64 %44)
  %46 = sitofp i32 %45 to double
  %47 = fmul double 5.000000e-01, %46
  store double %47, double* %5, align 8
  %48 = load i64, i64* %3, align 8
  %49 = mul i64 2, %48
  %50 = sub i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = call i64 @good_size(i32 %51)
  %53 = call i32 @cost_guess(i64 %52)
  %54 = mul nsw i32 2, %53
  %55 = sitofp i32 %54 to double
  store double %55, double* %6, align 8
  %56 = load double, double* %6, align 8
  %57 = fmul double %56, 1.500000e+00
  store double %57, double* %6, align 8
  %58 = load double, double* %6, align 8
  %59 = load double, double* %5, align 8
  %60 = fcmp olt double %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %43
  %62 = load i64, i64* %3, align 8
  %63 = call i64 @make_fftblue_plan(i64 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %61
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = call i32 @DEALLOC(%struct.TYPE_5__* %71)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %89

73:                                               ; preds = %61
  br label %87

74:                                               ; preds = %43
  %75 = load i64, i64* %3, align 8
  %76 = call i8* @make_rfftp_plan(i64 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %74
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = call i32 @DEALLOC(%struct.TYPE_5__* %84)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %89

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %73
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %2, align 8
  br label %89

89:                                               ; preds = %87, %83, %70, %41, %38, %15, %9
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %90
}

declare dso_local %struct.TYPE_5__* @RALLOC(i32, i32) #1

declare dso_local i64 @largest_prime_factor(i64) #1

declare dso_local i64 @sqrt(i64) #1

declare dso_local i8* @make_rfftp_plan(i64) #1

declare dso_local i32 @DEALLOC(%struct.TYPE_5__*) #1

declare dso_local i32 @cost_guess(i64) #1

declare dso_local i64 @good_size(i32) #1

declare dso_local i64 @make_fftblue_plan(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
