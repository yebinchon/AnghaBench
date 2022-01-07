; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_vmx_ckpt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_show_vmx_ckpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i32* }

@PTRACE_GETREGSET = common dso_local global i32 0, align 4
@NT_PPC_TM_CVMX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ptrace(PTRACE_GETREGSET, NT_PPC_TM_CVMX) failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_vmx_ckpt(i32 %0, [2 x i64]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i64]*, align 8
  %6 = alloca [34 x [2 x i64]], align 16
  %7 = alloca %struct.iovec, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store [2 x i64]* %1, [2 x i64]** %5, align 8
  %9 = getelementptr inbounds [34 x [2 x i64]], [34 x [2 x i64]]* %6, i64 0, i64 0
  %10 = bitcast [2 x i64]* %9 to i32*
  %11 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  store i32* %10, i32** %11, align 8
  %12 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  store i32 544, i32* %12, align 8
  %13 = load i32, i32* @PTRACE_GETREGSET, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NT_PPC_TM_CVMX, align 4
  %16 = call i32 @ptrace(i32 %13, i32 %14, i32 %15, %struct.iovec* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call i32 @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @TEST_FAIL, align 4
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load [2 x i64]*, [2 x i64]** %5, align 8
  %24 = bitcast [2 x i64]* %23 to i64**
  %25 = getelementptr inbounds [34 x [2 x i64]], [34 x [2 x i64]]* %6, i64 0, i64 0
  %26 = bitcast [2 x i64]* %25 to i64**
  %27 = call i32 @memcpy(i64** %24, i64** %26, i32 544)
  %28 = load i32, i32* @TEST_PASS, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ptrace(i32, i32, i32, %struct.iovec*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memcpy(i64**, i64**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
