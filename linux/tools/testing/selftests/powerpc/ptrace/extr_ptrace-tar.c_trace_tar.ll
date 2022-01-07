; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tar.c_trace_tar.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tar.c_trace_tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"%-30s TAR: %lu PPR: %lx DSCR: %lu\0A\00", align 1
@ptrace_read_running = common dso_local global i8* null, align 8
@TAR_1 = common dso_local global i32 0, align 4
@PPR_1 = common dso_local global i32 0, align 4
@DSCR_1 = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_tar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [3 x i64], align 16
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @start_trace(i32 %4)
  %6 = call i32 @FAIL_IF(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %9 = call i32 @show_tar_registers(i32 %7, i64* %8)
  %10 = call i32 @FAIL_IF(i32 %9)
  %11 = load i8*, i8** @ptrace_read_running, align 8
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %13 = load i64, i64* %12, align 16
  %14 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 2
  %17 = load i64, i64* %16, align 16
  %18 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %11, i64 %13, i64 %15, i64 %17)
  %19 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %20 = load i32, i32* @TAR_1, align 4
  %21 = load i32, i32* @PPR_1, align 4
  %22 = load i32, i32* @DSCR_1, align 4
  %23 = call i32 @validate_tar_registers(i64* %19, i32 %20, i32 %21, i32 %22)
  %24 = call i32 @FAIL_IF(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @stop_trace(i32 %25)
  %27 = call i32 @FAIL_IF(i32 %26)
  %28 = load i32, i32* @TEST_PASS, align 4
  ret i32 %28
}

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @start_trace(i32) #1

declare dso_local i32 @show_tar_registers(i32, i64*) #1

declare dso_local i32 @printf(i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @validate_tar_registers(i64*, i32, i32, i32) #1

declare dso_local i32 @stop_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
