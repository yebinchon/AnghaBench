; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_benchtest3.c_runTest.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_benchtest3.c_runTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mx = common dso_local global i32 0, align 4
@ma = common dso_local global i32 0, align 4
@trylockThread = common dso_local global i32 0, align 4
@currSysTimeStart = common dso_local global i32 0, align 4
@currSysTimeStop = common dso_local global i32 0, align 4
@overHeadMilliSecs = common dso_local global i64 0, align 8
@durationMilliSecs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%-45s %15ld %15.3f\0A\00", align 1
@ITERATIONS = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @runTest(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @pthread_mutex_init(i32* @mx, i32* @ma)
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = call i64 @pthread_mutex_lock(i32* @mx)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* @trylockThread, align 4
  %15 = call i64 @pthread_create(i32* %5, i32* null, i32 %14, i32 0)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @pthread_join(i32 %19, i32* null)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = call i64 @pthread_mutex_unlock(i32* @mx)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = call i64 @pthread_mutex_destroy(i32* @mx)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* @currSysTimeStart, align 4
  %33 = load i32, i32* @currSysTimeStop, align 4
  %34 = call i64 @GetDurationMilliSecs(i32 %32, i32 %33)
  %35 = load i64, i64* @overHeadMilliSecs, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* @durationMilliSecs, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i64, i64* @durationMilliSecs, align 8
  %39 = load i64, i64* @durationMilliSecs, align 8
  %40 = sitofp i64 %39 to float
  %41 = fpext float %40 to double
  %42 = fmul double %41, 1.000000e+03
  %43 = load float, float* @ITERATIONS, align 4
  %44 = fpext float %43 to double
  %45 = fdiv double %42, %44
  %46 = fptrunc double %45 to float
  %47 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %37, i64 %38, float %46)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @pthread_mutex_destroy(i32*) #1

declare dso_local i64 @GetDurationMilliSecs(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i64, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
