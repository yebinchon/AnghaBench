; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_launch_tests.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_launch_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_debug_info = type { i32 }

@PPC_PTRACE_GETHWDBGINFO = common dso_local global i32 0, align 4
@child_pid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't set breakpoint info\0A\00", align 1
@PPC_DEBUG_FEATURE_DATA_BP_RANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"WARNING: Kernel doesn't support PPC_PTRACE_SETHWDEBUG\0A\00", align 1
@BP_W = common dso_local global i32 0, align 4
@BP_RW = common dso_local global i32 0, align 4
@PTRACE_CONT = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"FAIL: Child process hit the breakpoint, which is not expected\0A\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Child exited normally\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @launch_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @launch_tests(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ppc_debug_info, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @PPC_PTRACE_GETHWDBGINFO, align 4
  %10 = load i32, i32* @child_pid, align 4
  %11 = call i32 @ptrace(i32 %9, i32 %10, i32* null, %struct.ppc_debug_info* %8)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @exit(i32 -1) #3
  unreachable

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.ppc_debug_info, %struct.ppc_debug_info* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PPC_DEBUG_FEATURE_DATA_BP_RANGE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %36, %25
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ule i64 %28, 8
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %32 = load i32, i32* @BP_W, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @launch_watchpoints(i8* %31, i32 %32, i32 %33, %struct.ppc_debug_info* %8, i32 %34)
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %26

39:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %50, %39
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ule i64 %42, 8
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %46 = load i32, i32* @BP_RW, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @launch_watchpoints(i8* %45, i32 %46, i32 %47, %struct.ppc_debug_info* %8, i32 %48)
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = shl i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load i32, i32* @PTRACE_CONT, align 4
  %55 = load i32, i32* @child_pid, align 4
  %56 = call i32 @ptrace(i32 %54, i32 %55, i32* null, %struct.ppc_debug_info* null)
  %57 = call i32 @wait(i32* %7)
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @WIFSTOPPED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @WSTOPSIG(i32 %62)
  %64 = load i64, i64* @SIGTRAP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @PTRACE_CONT, align 4
  %69 = load i32, i32* @child_pid, align 4
  %70 = call i32 @ptrace(i32 %68, i32 %69, i32* null, %struct.ppc_debug_info* null)
  %71 = load i32, i32* @TEST_FAIL, align 4
  store i32 %71, i32* %2, align 4
  br label %80

72:                                               ; preds = %61, %53
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @WIFEXITED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i32, i32* @TEST_PASS, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %66
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @ptrace(i32, i32, i32*, %struct.ppc_debug_info*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @launch_watchpoints(i8*, i32, i32, %struct.ppc_debug_info*, i32) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i64 @WSTOPSIG(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
