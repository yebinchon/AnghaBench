; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_launch_watchpoints.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_launch_watchpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_debug_info = type { i32 }

@dummy_var = common dso_local global i64 0, align 8
@BP_W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@PTRACE_CONT = common dso_local global i32 0, align 4
@child_pid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Test %s watchpoint with len: %d \00", align 1
@PPC_DEBUG_FEATURE_DATA_BP_RANGE = common dso_local global i32 0, align 4
@DAWR_LENGTH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.ppc_debug_info*, i32)* @launch_watchpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @launch_watchpoints(i8* %0, i32 %1, i32 %2, %struct.ppc_debug_info* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ppc_debug_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ppc_debug_info* %3, %struct.ppc_debug_info** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i64, i64* @dummy_var, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = and i64 %16, -8
  store i64 %17, i64* %12, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @BP_W, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i64, i64* %12, align 8
  %23 = or i64 %22, 2
  store i64 %23, i64* %12, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %29

24:                                               ; preds = %5
  %25 = load i64, i64* %12, align 8
  %26 = or i64 %25, 1
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = or i64 %27, 2
  store i64 %28, i64* %12, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i64, i64* %12, align 8
  %31 = or i64 %30, 4
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @set_breakpoint_addr(i8* %33)
  %35 = load i32, i32* @PTRACE_CONT, align 4
  %36 = load i32, i32* @child_pid, align 4
  %37 = call i32 @ptrace(i32 %35, i32 %36, i32* null, i32 0)
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %40)
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @check_success(i8* %42)
  %44 = call i32 @set_breakpoint_addr(i8* null)
  %45 = load i64, i64* %12, align 8
  %46 = and i64 %45, -8
  store i64 %46, i64* %12, align 8
  %47 = load %struct.ppc_debug_info*, %struct.ppc_debug_info** %9, align 8
  %48 = getelementptr inbounds %struct.ppc_debug_info, %struct.ppc_debug_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PPC_DEBUG_FEATURE_DATA_BP_RANGE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %29
  br label %94

54:                                               ; preds = %29
  %55 = load i64, i64* %12, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @set_hwbreakpoint_addr(i8* %56, i32 0)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* @PTRACE_CONT, align 4
  %59 = load i32, i32* @child_pid, align 4
  %60 = call i32 @ptrace(i32 %58, i32 %59, i32* null, i32 0)
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %62, i32 %63)
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @check_success(i8* %65)
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @del_hwbreakpoint_addr(i32 %67)
  store i32 8, i32* %14, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %54
  %72 = load i64, i64* %12, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* @DAWR_LENGTH_MAX, align 4
  %75 = sub nsw i32 %74, 1
  %76 = and i32 %73, %75
  %77 = sub nsw i32 512, %76
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %71, %54
  %79 = load i64, i64* %12, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @set_hwbreakpoint_addr(i8* %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* @PTRACE_CONT, align 4
  %84 = load i32, i32* @child_pid, align 4
  %85 = call i32 @ptrace(i32 %83, i32 %84, i32* null, i32 0)
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @sprintf(i8* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %87, i32 %88)
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @check_success(i8* %90)
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @del_hwbreakpoint_addr(i32 %92)
  br label %94

94:                                               ; preds = %78, %53
  ret void
}

declare dso_local i32 @set_breakpoint_addr(i8*) #1

declare dso_local i32 @ptrace(i32, i32, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @check_success(i8*) #1

declare dso_local i32 @set_hwbreakpoint_addr(i8*, i32) #1

declare dso_local i32 @del_hwbreakpoint_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
