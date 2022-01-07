; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/stringloops/extr_strlen.c_bench_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/stringloops/extr_strlen.c_bench_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { double, i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@ITERATIONS_BENCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"len %3.3d : time = %.6f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bench_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bench_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %7 = call i32 @clock_gettime(i32 %6, %struct.timespec* %3)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %15, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ITERATIONS_BENCH, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @test_strlen(i8* %13)
  br label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %8

18:                                               ; preds = %8
  %19 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %20 = call i32 @clock_gettime(i32 %19, %struct.timespec* %4)
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @test_strlen(i8* %21)
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = fsub double %24, %26
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %29, %31
  %33 = sitofp i32 %32 to double
  %34 = fdiv double %33, 1.000000e+09
  %35 = fadd double %27, %34
  %36 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22, double %35)
  ret void
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @test_strlen(i8*) #1

declare dso_local i32 @printf(i8*, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
