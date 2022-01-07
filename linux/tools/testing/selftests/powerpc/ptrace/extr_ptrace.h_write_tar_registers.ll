; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_write_tar_registers.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_write_tar_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"malloc() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@PTRACE_SETREGSET = common dso_local global i32 0, align 4
@NT_PPC_TAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ptrace(PTRACE_SETREGSET) failed\00", align 1
@NT_PPC_PPR = common dso_local global i32 0, align 4
@NT_PPC_DSCR = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_tar_registers(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iovec, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = call i64* @malloc(i32 8)
  store i64* %13, i64** %11, align 8
  %14 = load i64*, i64** %11, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @TEST_FAIL, align 4
  store i32 %18, i32* %5, align 4
  br label %64

19:                                               ; preds = %4
  %20 = load i64*, i64** %11, align 8
  %21 = bitcast i64* %20 to i32*
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 1
  store i32* %21, i32** %22, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 0
  store i32 8, i32* %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64*, i64** %11, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i32, i32* @PTRACE_SETREGSET, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NT_PPC_TAR, align 4
  %29 = call i32 @ptrace(i32 %26, i32 %27, i32 %28, %struct.iovec* %10)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %60

34:                                               ; preds = %19
  %35 = load i64, i64* %8, align 8
  %36 = load i64*, i64** %11, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* @PTRACE_SETREGSET, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NT_PPC_PPR, align 4
  %40 = call i32 @ptrace(i32 %37, i32 %38, i32 %39, %struct.iovec* %10)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %60

45:                                               ; preds = %34
  %46 = load i64, i64* %9, align 8
  %47 = load i64*, i64** %11, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* @PTRACE_SETREGSET, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @NT_PPC_DSCR, align 4
  %51 = call i32 @ptrace(i32 %48, i32 %49, i32 %50, %struct.iovec* %10)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %60

56:                                               ; preds = %45
  %57 = load i64*, i64** %11, align 8
  %58 = call i32 @free(i64* %57)
  %59 = load i32, i32* @TEST_PASS, align 4
  store i32 %59, i32* %5, align 4
  br label %64

60:                                               ; preds = %54, %43, %32
  %61 = load i64*, i64** %11, align 8
  %62 = call i32 @free(i64* %61)
  %63 = load i32, i32* @TEST_FAIL, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %56, %16
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ptrace(i32, i32, i32, %struct.iovec*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
