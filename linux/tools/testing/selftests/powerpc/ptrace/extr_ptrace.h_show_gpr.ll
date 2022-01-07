; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_gpr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_gpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }

@.str = private unnamed_addr constant [16 x i8] c"malloc() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@PTRACE_GETREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ptrace(PTRACE_GETREGSET) failed\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_gpr(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %9 = call i64 @malloc(i32 8)
  %10 = inttoptr i64 %9 to %struct.pt_regs*
  store %struct.pt_regs* %10, %struct.pt_regs** %6, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %12 = icmp ne %struct.pt_regs* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @TEST_FAIL, align 4
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load i32, i32* @PTRACE_GETREGS, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %20 = call i32 @ptrace(i32 %17, i32 %18, i32* null, %struct.pt_regs* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @TEST_FAIL, align 4
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %16
  %27 = load i64*, i64** %5, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  store i32 14, i32* %8, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 32
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 14
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  store i64 %40, i64* %45, align 8
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %30

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32, i32* @TEST_PASS, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %23, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ptrace(i32, i32, i32*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
