; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_ckpt_fpr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_ckpt_fpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpr_regs = type { i64* }
%struct.iovec = type { i32, %struct.fpr_regs* }

@PTRACE_GETREGSET = common dso_local global i32 0, align 4
@NT_PPC_TM_CFPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ptrace(PTRACE_GETREGSET) failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_ckpt_fpr(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.fpr_regs*, align 8
  %7 = alloca %struct.iovec, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
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
  br label %49

24:                                               ; preds = %2
  %25 = load i64*, i64** %5, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load %struct.fpr_regs*, %struct.fpr_regs** %6, align 8
  %33 = getelementptr inbounds %struct.fpr_regs, %struct.fpr_regs* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %38, i64* %42, align 8
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %28

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32, i32* @TEST_PASS, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
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
