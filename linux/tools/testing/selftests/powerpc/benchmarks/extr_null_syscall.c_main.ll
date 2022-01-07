; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/benchmarks/extr_null_syscall.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/benchmarks/extr_null_syscall.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@NR_LOOPS = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [25 x i8] c"%10.2f ns %10.2f cycles\0A\00", align 1
@timebase_multiplier = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %8 = call i32 (...) @get_proc_frequency()
  %9 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %10 = call i32 @clock_gettime(i32 %9, %struct.timespec* %4)
  %11 = call i64 (...) @mftb()
  store i64 %11, i64* %2, align 8
  %12 = load float, float* @NR_LOOPS, align 4
  %13 = call i32 @do_null_syscall(float %12)
  %14 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %15 = call i32 @clock_gettime(i32 %14, %struct.timespec* %5)
  %16 = call i64 (...) @mftb()
  store i64 %16, i64* %3, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %18, %20
  %22 = mul i64 %21, 1000000000
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %24, %26
  %28 = add i64 %22, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %2, align 8
  %31 = sub i64 %29, %30
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = uitofp i64 %32 to float
  %34 = load float, float* @NR_LOOPS, align 4
  %35 = fdiv float %33, %34
  %36 = load i64, i64* %7, align 8
  %37 = uitofp i64 %36 to float
  %38 = load float, float* @timebase_multiplier, align 4
  %39 = fmul float %37, %38
  %40 = load float, float* @NR_LOOPS, align 4
  %41 = fdiv float %39, %40
  %42 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), float %35, float %41)
  ret i32 0
}

declare dso_local i32 @get_proc_frequency(...) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @mftb(...) #1

declare dso_local i32 @do_null_syscall(float) #1

declare dso_local i32 @printf(i8*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
