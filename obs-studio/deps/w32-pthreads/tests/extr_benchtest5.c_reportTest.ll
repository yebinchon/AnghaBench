; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_benchtest5.c_reportTest.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_benchtest5.c_reportTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@currSysTimeStart = common dso_local global i32 0, align 4
@currSysTimeStop = common dso_local global i32 0, align 4
@overHeadMilliSecs = common dso_local global i64 0, align 8
@durationMilliSecs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%-45s %15ld %15.3f\0A\00", align 1
@ITERATIONS = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reportTest(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @currSysTimeStart, align 4
  %4 = load i32, i32* @currSysTimeStop, align 4
  %5 = call i64 @GetDurationMilliSecs(i32 %3, i32 %4)
  %6 = load i64, i64* @overHeadMilliSecs, align 8
  %7 = sub nsw i64 %5, %6
  store i64 %7, i64* @durationMilliSecs, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i64, i64* @durationMilliSecs, align 8
  %10 = load i64, i64* @durationMilliSecs, align 8
  %11 = sitofp i64 %10 to float
  %12 = fpext float %11 to double
  %13 = fmul double %12, 1.000000e+03
  %14 = load float, float* @ITERATIONS, align 4
  %15 = fpext float %14 to double
  %16 = fdiv double %13, %15
  %17 = fptrunc double %16 to float
  %18 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %8, i64 %9, float %17)
  ret void
}

declare dso_local i64 @GetDurationMilliSecs(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i64, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
