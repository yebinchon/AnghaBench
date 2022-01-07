; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/benchmarks/extr_mmap_bench.c_test_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/benchmarks/extr_mmap_bench.c_test_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { double, i32 }

@iterations = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@MEMSIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@pg_fault = common dso_local global i64 0, align 8
@CHUNK_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"time = %.6f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_mmap() #0 {
  %1 = alloca %struct.timespec, align 8
  %2 = alloca %struct.timespec, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = load i64, i64* @iterations, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %8 = call i32 @clock_gettime(i32 %7, %struct.timespec* %1)
  br label %9

9:                                                ; preds = %44, %0
  %10 = load i64, i64* %3, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %3, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = load i32, i32* @MEMSIZE, align 4
  %15 = load i32, i32* @PROT_READ, align 4
  %16 = load i32, i32* @PROT_WRITE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MAP_PRIVATE, align 4
  %19 = load i32, i32* @MAP_ANONYMOUS, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @mmap(i32* null, i32 %14, i32 %17, i32 %20, i32 -1, i32 0)
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** @MAP_FAILED, align 8
  %24 = icmp eq i8* %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @FAIL_IF(i32 %25)
  %27 = load i64, i64* @pg_fault, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %40, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CHUNK_COUNT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 16
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8 99, i8* %39, align 1
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %30

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %13
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @MEMSIZE, align 4
  %47 = call i32 @munmap(i8* %45, i32 %46)
  br label %9

48:                                               ; preds = %9
  %49 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %50 = call i32 @clock_gettime(i32 %49, %struct.timespec* %2)
  %51 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0
  %54 = load double, double* %53, align 8
  %55 = fsub double %52, %54
  %56 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %57, %59
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %61, 1.000000e+09
  %63 = fadd double %55, %62
  %64 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %63)
  ret i32 0
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
