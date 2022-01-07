; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-tar.c_trace_tm_tar.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-tar.c_trace_tm_tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"%-30s TAR: %lu PPR: %lx DSCR: %lu\0A\00", align 1
@ptrace_read_running = common dso_local global i8* null, align 8
@TAR_2 = common dso_local global i32 0, align 4
@PPR_2 = common dso_local global i32 0, align 4
@DSCR_2 = common dso_local global i32 0, align 4
@ptrace_read_ckpt = common dso_local global i8* null, align 8
@TAR_1 = common dso_local global i32 0, align 4
@PPR_1 = common dso_local global i32 0, align 4
@DSCR_1 = common dso_local global i32 0, align 4
@TAR_4 = common dso_local global i32 0, align 4
@PPR_4 = common dso_local global i64 0, align 8
@DSCR_4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%-30s TAR: %u PPR: %lx DSCR: %u\0A\00", align 1
@ptrace_write_ckpt = common dso_local global i8* null, align 8
@pptr = common dso_local global i32* null, align 8
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_tm_tar(i32 %0) #0 {
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
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 2
  %18 = load i64, i64* %17, align 16
  %19 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %14, i64 %16, i64 %18)
  %20 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %21 = load i32, i32* @TAR_2, align 4
  %22 = load i32, i32* @PPR_2, align 4
  %23 = load i32, i32* @DSCR_2, align 4
  %24 = call i32 @validate_tar_registers(i64* %20, i32 %21, i32 %22, i32 %23)
  %25 = call i32 @FAIL_IF(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %28 = call i32 @show_tm_checkpointed_state(i32 %26, i64* %27)
  %29 = call i32 @FAIL_IF(i32 %28)
  %30 = load i8*, i8** @ptrace_read_ckpt, align 8
  %31 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 2
  %37 = load i64, i64* %36, align 16
  %38 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %33, i64 %35, i64 %37)
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %40 = load i32, i32* @TAR_1, align 4
  %41 = load i32, i32* @PPR_1, align 4
  %42 = load i32, i32* @DSCR_1, align 4
  %43 = call i32 @validate_tar_registers(i64* %39, i32 %40, i32 %41, i32 %42)
  %44 = call i32 @FAIL_IF(i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @TAR_4, align 4
  %47 = load i64, i64* @PPR_4, align 8
  %48 = load i64, i64* @DSCR_4, align 8
  %49 = call i32 @write_ckpt_tar_registers(i32 %45, i32 %46, i64 %47, i64 %48)
  %50 = call i32 @FAIL_IF(i32 %49)
  %51 = load i8*, i8** @ptrace_write_ckpt, align 8
  %52 = load i32, i32* @TAR_4, align 4
  %53 = load i64, i64* @PPR_4, align 8
  %54 = load i64, i64* @DSCR_4, align 8
  %55 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 %52, i64 %53, i64 %54)
  %56 = load i32*, i32** @pptr, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @stop_trace(i32 %58)
  %60 = call i32 @FAIL_IF(i32 %59)
  %61 = load i32, i32* @TEST_PASS, align 4
  ret i32 %61
}

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @start_trace(i32) #1

declare dso_local i32 @show_tar_registers(i32, i64*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i64, i64) #1

declare dso_local i32 @validate_tar_registers(i64*, i32, i32, i32) #1

declare dso_local i32 @show_tm_checkpointed_state(i32, i64*) #1

declare dso_local i32 @write_ckpt_tar_registers(i32, i32, i64, i64) #1

declare dso_local i32 @stop_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
