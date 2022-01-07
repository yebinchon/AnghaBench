; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_ckpt_gpr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_ckpt_gpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }
%struct.iovec = type { i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"malloc() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@PTRACE_GETREGSET = common dso_local global i32 0, align 4
@NT_PPC_TM_CGPR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ptrace(PTRACE_GETREGSET) failed\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_ckpt_gpr(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.iovec, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %10 = call i64 @malloc(i32 8)
  %11 = inttoptr i64 %10 to %struct.pt_regs*
  store %struct.pt_regs* %11, %struct.pt_regs** %6, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %13 = icmp ne %struct.pt_regs* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @TEST_FAIL, align 4
  store i32 %16, i32* %3, align 4
  br label %57

17:                                               ; preds = %2
  %18 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %19 = bitcast %struct.pt_regs* %18 to i32*
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  store i32* %19, i32** %20, align 8
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  store i32 8, i32* %21, align 8
  %22 = load i32, i32* @PTRACE_GETREGSET, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @NT_PPC_TM_CGPR, align 4
  %25 = call i32 @ptrace(i32 %22, i32 %23, i32 %24, %struct.iovec* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @TEST_FAIL, align 4
  store i32 %30, i32* %3, align 4
  br label %57

31:                                               ; preds = %17
  %32 = load i64*, i64** %5, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  store i32 14, i32* %9, align 4
  br label %35

35:                                               ; preds = %51, %34
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 32
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 14
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  store i64 %45, i64* %50, align 8
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %35

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %31
  %56 = load i32, i32* @TEST_PASS, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %28, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ptrace(i32, i32, i32, %struct.iovec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
