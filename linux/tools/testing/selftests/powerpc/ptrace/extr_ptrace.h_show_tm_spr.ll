; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_tm_spr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_tm_spr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm_spr_regs = type { i32 }
%struct.iovec = type { i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"malloc() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@PTRACE_GETREGSET = common dso_local global i32 0, align 4
@NT_PPC_TM_SPR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ptrace(PTRACE_GETREGSET) failed\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_tm_spr(i32 %0, %struct.tm_spr_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm_spr_regs*, align 8
  %6 = alloca %struct.tm_spr_regs*, align 8
  %7 = alloca %struct.iovec, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.tm_spr_regs* %1, %struct.tm_spr_regs** %5, align 8
  %9 = call i64 @malloc(i32 4)
  %10 = inttoptr i64 %9 to %struct.tm_spr_regs*
  store %struct.tm_spr_regs* %10, %struct.tm_spr_regs** %6, align 8
  %11 = load %struct.tm_spr_regs*, %struct.tm_spr_regs** %6, align 8
  %12 = icmp ne %struct.tm_spr_regs* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @TEST_FAIL, align 4
  store i32 %15, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.tm_spr_regs*, %struct.tm_spr_regs** %6, align 8
  %18 = bitcast %struct.tm_spr_regs* %17 to i32*
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  store i32* %18, i32** %19, align 8
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  store i32 4, i32* %20, align 8
  %21 = load i32, i32* @PTRACE_GETREGSET, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @NT_PPC_TM_SPR, align 4
  %24 = call i32 @ptrace(i32 %21, i32 %22, i32 %23, %struct.iovec* %7)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @TEST_FAIL, align 4
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %16
  %31 = load %struct.tm_spr_regs*, %struct.tm_spr_regs** %5, align 8
  %32 = icmp ne %struct.tm_spr_regs* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.tm_spr_regs*, %struct.tm_spr_regs** %5, align 8
  %35 = load %struct.tm_spr_regs*, %struct.tm_spr_regs** %6, align 8
  %36 = call i32 @memcpy(%struct.tm_spr_regs* %34, %struct.tm_spr_regs* %35, i32 4)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* @TEST_PASS, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %27, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ptrace(i32, i32, i32, %struct.iovec*) #1

declare dso_local i32 @memcpy(%struct.tm_spr_regs*, %struct.tm_spr_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
