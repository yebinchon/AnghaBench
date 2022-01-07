; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spd-gpr.c_trace_tm_spd_gpr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spd-gpr.c_trace_tm_spd_gpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPR_4 = common dso_local global i32 0, align 4
@FPR_4_REP = common dso_local global i32 0, align 4
@FPR_1_REP = common dso_local global i32 0, align 4
@GPR_1 = common dso_local global i32 0, align 4
@GPR_3 = common dso_local global i32 0, align 4
@FPR_3_REP = common dso_local global i32 0, align 4
@pptr = common dso_local global i32* null, align 8
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_tm_spd_gpr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [18 x i64], align 16
  %4 = alloca [32 x i64], align 16
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @start_trace(i32 %5)
  %7 = call i32 @FAIL_IF(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = getelementptr inbounds [18 x i64], [18 x i64]* %3, i64 0, i64 0
  %10 = call i32 @show_gpr(i32 %8, i64* %9)
  %11 = call i32 @FAIL_IF(i32 %10)
  %12 = getelementptr inbounds [18 x i64], [18 x i64]* %3, i64 0, i64 0
  %13 = load i32, i32* @GPR_4, align 4
  %14 = call i32 @validate_gpr(i64* %12, i32 %13)
  %15 = call i32 @FAIL_IF(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 0
  %18 = call i32 @show_fpr(i32 %16, i64* %17)
  %19 = call i32 @FAIL_IF(i32 %18)
  %20 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 0
  %21 = load i32, i32* @FPR_4_REP, align 4
  %22 = call i32 @validate_fpr(i64* %20, i32 %21)
  %23 = call i32 @FAIL_IF(i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 0
  %26 = call i32 @show_ckpt_fpr(i32 %24, i64* %25)
  %27 = call i32 @FAIL_IF(i32 %26)
  %28 = getelementptr inbounds [32 x i64], [32 x i64]* %4, i64 0, i64 0
  %29 = load i32, i32* @FPR_1_REP, align 4
  %30 = call i32 @validate_fpr(i64* %28, i32 %29)
  %31 = call i32 @FAIL_IF(i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = getelementptr inbounds [18 x i64], [18 x i64]* %3, i64 0, i64 0
  %34 = call i32 @show_ckpt_gpr(i32 %32, i64* %33)
  %35 = call i32 @FAIL_IF(i32 %34)
  %36 = getelementptr inbounds [18 x i64], [18 x i64]* %3, i64 0, i64 0
  %37 = load i32, i32* @GPR_1, align 4
  %38 = call i32 @validate_gpr(i64* %36, i32 %37)
  %39 = call i32 @FAIL_IF(i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @GPR_3, align 4
  %42 = call i32 @write_ckpt_gpr(i32 %40, i32 %41)
  %43 = call i32 @FAIL_IF(i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @FPR_3_REP, align 4
  %46 = call i32 @write_ckpt_fpr(i32 %44, i32 %45)
  %47 = call i32 @FAIL_IF(i32 %46)
  %48 = load i32*, i32** @pptr, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 1, i32* %49, align 4
  %50 = load i32*, i32** @pptr, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @stop_trace(i32 %52)
  %54 = call i32 @FAIL_IF(i32 %53)
  %55 = load i32, i32* @TEST_PASS, align 4
  ret i32 %55
}

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @start_trace(i32) #1

declare dso_local i32 @show_gpr(i32, i64*) #1

declare dso_local i32 @validate_gpr(i64*, i32) #1

declare dso_local i32 @show_fpr(i32, i64*) #1

declare dso_local i32 @validate_fpr(i64*, i32) #1

declare dso_local i32 @show_ckpt_fpr(i32, i64*) #1

declare dso_local i32 @show_ckpt_gpr(i32, i64*) #1

declare dso_local i32 @write_ckpt_gpr(i32, i32) #1

declare dso_local i32 @write_ckpt_fpr(i32, i32) #1

declare dso_local i32 @stop_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
