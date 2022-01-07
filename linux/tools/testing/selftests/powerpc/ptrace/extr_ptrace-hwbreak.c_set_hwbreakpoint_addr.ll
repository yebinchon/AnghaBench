; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_set_hwbreakpoint_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_set_hwbreakpoint_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_hw_breakpoint = type { i32, i64, i8*, i8*, i32, i32, i32 }

@PPC_BREAKPOINT_TRIGGER_RW = common dso_local global i32 0, align 4
@PPC_BREAKPOINT_MODE_EXACT = common dso_local global i32 0, align 4
@PPC_BREAKPOINT_MODE_RANGE_INCLUSIVE = common dso_local global i32 0, align 4
@PPC_BREAKPOINT_CONDITION_NONE = common dso_local global i32 0, align 4
@PPC_PTRACE_SETHWDEBUG = common dso_local global i32 0, align 4
@child_pid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't set breakpoint\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @set_hwbreakpoint_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_hwbreakpoint_addr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ppc_hw_breakpoint, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load i32, i32* @PPC_BREAKPOINT_TRIGGER_RW, align 4
  %9 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %6, i32 0, i32 6
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* @PPC_BREAKPOINT_MODE_EXACT, align 4
  %11 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %6, i32 0, i32 5
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @PPC_BREAKPOINT_MODE_RANGE_INCLUSIVE, align 4
  %16 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %6, i32 0, i32 5
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @PPC_BREAKPOINT_CONDITION_NONE, align 4
  %19 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %6, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %6, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %22, i64 %24
  %26 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %6, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.ppc_hw_breakpoint, %struct.ppc_hw_breakpoint* %6, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @PPC_PTRACE_SETHWDEBUG, align 4
  %29 = load i32, i32* @child_pid, align 4
  %30 = call i32 @ptrace(i32 %28, i32 %29, i32 0, %struct.ppc_hw_breakpoint* %6)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @exit(i32 -1) #3
  unreachable

36:                                               ; preds = %17
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @ptrace(i32, i32, i32, %struct.ppc_hw_breakpoint*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
