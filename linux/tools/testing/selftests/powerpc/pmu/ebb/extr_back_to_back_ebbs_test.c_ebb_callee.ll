; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_back_to_back_ebbs_test.c_ebb_callee.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_back_to_back_ebbs_test.c_ebb_callee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@SPRN_BESCR = common dso_local global i32 0, align 4
@BESCR_PMEO = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@sample_period = common dso_local global i32 0, align 4
@NUMBER_OF_EBBS = common dso_local global i64 0, align 8
@MMCR0_PMAO = common dso_local global i32 0, align 4
@SPRN_SIAR = common dso_local global i32 0, align 4
@SPRN_PMC1 = common dso_local global i32 0, align 4
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ebb_callee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ebb_callee() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SPRN_BESCR, align 4
  %4 = call i32 @mfspr(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @BESCR_PMEO, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 1, i32 1), align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 1, i32 1), align 8
  br label %20

12:                                               ; preds = %0
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 1, i32 0), align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 1, i32 0), align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 1, i32 0), align 8
  %17 = call i32 @trace_log_counter(i32 %15, i64 %16)
  %18 = load i32, i32* @sample_period, align 4
  %19 = call i32 @count_pmc(i32 1, i32 %18)
  br label %20

20:                                               ; preds = %12, %9
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 1, i32 0), align 8
  %22 = load i64, i64* @NUMBER_OF_EBBS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @MMCR0_PMAO, align 4
  %26 = call i32 @reset_ebb_with_clear_mask(i32 %25)
  br label %29

27:                                               ; preds = %20
  %28 = call i32 (...) @reset_ebb()
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* @SPRN_SIAR, align 4
  %31 = call i32 @mfspr(i32 %30)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0), align 8
  %33 = load i32, i32* @SPRN_SIAR, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @trace_log_reg(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @SPRN_PMC1, align 4
  %37 = call i32 @mfspr(i32 %36)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0), align 8
  %39 = load i32, i32* @SPRN_PMC1, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @trace_log_reg(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @SPRN_MMCR0, align 4
  %43 = call i32 @mfspr(i32 %42)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0), align 8
  %45 = load i32, i32* @SPRN_MMCR0, align 4
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @trace_log_reg(i32 %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @trace_log_counter(i32, i64) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @reset_ebb_with_clear_mask(i32) #1

declare dso_local i32 @reset_ebb(...) #1

declare dso_local i32 @trace_log_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
