; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_fpr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_fpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpr_regs = type { i64* }

@PTRACE_GETFPREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ptrace(PTRACE_GETREGSET) failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_fpr(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.fpr_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %9 = call i64 @malloc(i32 8)
  %10 = inttoptr i64 %9 to %struct.fpr_regs*
  store %struct.fpr_regs* %10, %struct.fpr_regs** %6, align 8
  %11 = load i32, i32* @PTRACE_GETFPREGS, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.fpr_regs*, %struct.fpr_regs** %6, align 8
  %14 = call i32 @ptrace(i32 %11, i32 %12, i32* null, %struct.fpr_regs* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @TEST_FAIL, align 4
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %2
  %21 = load i64*, i64** %5, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.fpr_regs*, %struct.fpr_regs** %6, align 8
  %29 = getelementptr inbounds %struct.fpr_regs, %struct.fpr_regs* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  store i64 %34, i64* %38, align 8
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %24

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i32, i32* @TEST_PASS, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32*, %struct.fpr_regs*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
