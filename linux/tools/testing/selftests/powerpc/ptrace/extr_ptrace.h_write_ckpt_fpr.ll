; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_write_ckpt_fpr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_write_ckpt_fpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpr_regs = type { i64* }
%struct.iovec = type { i32, %struct.fpr_regs* }

@PTRACE_GETREGSET = common dso_local global i32 0, align 4
@NT_PPC_TM_CFPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ptrace(PTRACE_GETREGSET) failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@PTRACE_SETREGSET = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_ckpt_fpr(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.fpr_regs*, align 8
  %7 = alloca %struct.iovec, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = call i64 @malloc(i32 8)
  %11 = inttoptr i64 %10 to %struct.fpr_regs*
  store %struct.fpr_regs* %11, %struct.fpr_regs** %6, align 8
  %12 = load %struct.fpr_regs*, %struct.fpr_regs** %6, align 8
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  store %struct.fpr_regs* %12, %struct.fpr_regs** %13, align 8
  %14 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  store i32 8, i32* %14, align 8
  %15 = load i32, i32* @PTRACE_GETREGSET, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @NT_PPC_TM_CFPR, align 4
  %18 = call i32 @ptrace(i32 %15, i32 %16, i32 %17, %struct.iovec* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @TEST_FAIL, align 4
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %36, %24
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 32
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.fpr_regs*, %struct.fpr_regs** %6, align 8
  %31 = getelementptr inbounds %struct.fpr_regs, %struct.fpr_regs* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %29, i64* %35, align 8
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %25

39:                                               ; preds = %25
  %40 = load i32, i32* @PTRACE_SETREGSET, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @NT_PPC_TM_CFPR, align 4
  %43 = call i32 @ptrace(i32 %40, i32 %41, i32 %42, %struct.iovec* %7)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @TEST_FAIL, align 4
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @TEST_PASS, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %46, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, %struct.iovec*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
