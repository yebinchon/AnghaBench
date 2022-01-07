; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_tm_checkpointed_state.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_tm_checkpointed_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"malloc() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@PTRACE_GETREGSET = common dso_local global i32 0, align 4
@NT_PPC_TM_CTAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ptrace(PTRACE_GETREGSET) failed\00", align 1
@NT_PPC_TM_CPPR = common dso_local global i32 0, align 4
@NT_PPC_TM_CDSCR = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_tm_checkpointed_state(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.iovec, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %9 = call i64* @malloc(i32 8)
  store i64* %9, i64** %7, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @TEST_FAIL, align 4
  store i32 %14, i32* %3, align 4
  br label %78

15:                                               ; preds = %2
  %16 = load i64*, i64** %7, align 8
  %17 = bitcast i64* %16 to i32*
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %6, i32 0, i32 1
  store i32* %17, i32** %18, align 8
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %6, i32 0, i32 0
  store i32 8, i32* %19, align 8
  %20 = load i32, i32* @PTRACE_GETREGSET, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NT_PPC_TM_CTAR, align 4
  %23 = call i32 @ptrace(i32 %20, i32 %21, i32 %22, %struct.iovec* %6)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %74

28:                                               ; preds = %15
  %29 = load i64*, i64** %5, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* @PTRACE_GETREGSET, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NT_PPC_TM_CPPR, align 4
  %40 = call i32 @ptrace(i32 %37, i32 %38, i32 %39, %struct.iovec* %6)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %74

45:                                               ; preds = %36
  %46 = load i64*, i64** %5, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %5, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* @PTRACE_GETREGSET, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @NT_PPC_TM_CDSCR, align 4
  %57 = call i32 @ptrace(i32 %54, i32 %55, i32 %56, %struct.iovec* %6)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %74

62:                                               ; preds = %53
  %63 = load i64*, i64** %5, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i64*, i64** %7, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %5, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 2
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i64*, i64** %7, align 8
  %72 = call i32 @free(i64* %71)
  %73 = load i32, i32* @TEST_PASS, align 4
  store i32 %73, i32* %3, align 4
  br label %78

74:                                               ; preds = %60, %43, %26
  %75 = load i64*, i64** %7, align 8
  %76 = call i32 @free(i64* %75)
  %77 = load i32, i32* @TEST_FAIL, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %70, %12
  %79 = load i32, i32* %3, align 4
  ret i32 %79
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
