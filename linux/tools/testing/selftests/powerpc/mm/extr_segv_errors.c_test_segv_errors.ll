; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_segv_errors.c_test_segv_errors.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_segv_errors.c_test_segv_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@segv_handler = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@SIGSEGV = common dso_local global i32 0, align 4
@faulted = common dso_local global i32 0, align 4
@si_code = common dso_local global i64 0, align 8
@SEGV_ACCERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_segv_errors() #0 {
  %1 = alloca %struct.sigaction, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  %5 = load i32, i32* @SA_SIGINFO, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  %7 = load i32, i32* @segv_handler, align 4
  store i32 %7, i32* %6, align 4
  store i8* null, i8** %3, align 8
  %8 = call i32 (...) @getpagesize()
  %9 = load i32, i32* @MAP_PRIVATE, align 4
  %10 = load i32, i32* @MAP_ANONYMOUS, align 4
  %11 = or i32 %9, %10
  %12 = call i8* @mmap(i32* null, i32 %8, i32 0, i32 %11, i32 -1, i32 0)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** @MAP_FAILED, align 8
  %15 = icmp eq i8* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @FAIL_IF(i32 %16)
  %18 = load i32, i32* @SIGSEGV, align 4
  %19 = call i64 @sigaction(i32 %18, %struct.sigaction* %1, i32* null)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @FAIL_IF(i32 %21)
  store i32 0, i32* @faulted, align 4
  store i64 0, i64* @si_code, align 8
  %23 = call i32 (...) @mb()
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %2, align 1
  %26 = call i32 (...) @mb()
  %27 = load i32, i32* @faulted, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @FAIL_IF(i32 %30)
  %32 = load i64, i64* @si_code, align 8
  %33 = load i64, i64* @SEGV_ACCERR, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @FAIL_IF(i32 %35)
  store i32 0, i32* @faulted, align 4
  store i64 0, i64* @si_code, align 8
  %37 = call i32 (...) @mb()
  %38 = load i8, i8* %2, align 1
  %39 = load i8*, i8** %3, align 8
  store i8 %38, i8* %39, align 1
  %40 = call i32 (...) @mb()
  %41 = load i32, i32* @faulted, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @FAIL_IF(i32 %44)
  %46 = load i64, i64* @si_code, align 8
  %47 = load i64, i64* @SEGV_ACCERR, align 8
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @FAIL_IF(i32 %49)
  ret i32 0
}

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
