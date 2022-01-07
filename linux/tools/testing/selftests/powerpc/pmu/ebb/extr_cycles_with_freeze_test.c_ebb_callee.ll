; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_cycles_with_freeze_test.c_ebb_callee.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_cycles_with_freeze_test.c_ebb_callee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MMCR0_PMAO = common dso_local global i32 0, align 4
@MMCR0_FC = common dso_local global i32 0, align 4
@SPRN_BESCR = common dso_local global i32 0, align 4
@BESCR_PMEO = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@counters_frozen = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"frozen\00", align 1
@ebbs_while_frozen = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ebb_callee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ebb_callee() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MMCR0_PMAO, align 4
  %4 = load i32, i32* @MMCR0_FC, align 4
  %5 = or i32 %3, %4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @SPRN_BESCR, align 4
  %7 = call i32 @mfspr(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @BESCR_PMEO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 1, i32 1), align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 1, i32 1), align 4
  br label %41

15:                                               ; preds = %0
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 1, i32 0), align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 1, i32 0), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 1, i32 0), align 4
  %20 = call i32 @trace_log_counter(i32 %18, i32 %19)
  %21 = load i32, i32* @SPRN_MMCR0, align 4
  %22 = call i32 @mfspr(i32 %21)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0), align 4
  %24 = load i32, i32* @SPRN_MMCR0, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @trace_log_reg(i32 %23, i32 %24, i32 %25)
  %27 = load i64, i64* @counters_frozen, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %15
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0), align 4
  %31 = call i32 @trace_log_string(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ebbs_while_frozen, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @ebbs_while_frozen, align 4
  %34 = load i32, i32* @MMCR0_FC, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %1, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %29, %15
  %39 = load i32, i32* @sample_period, align 4
  %40 = call i32 @count_pmc(i32 1, i32 %39)
  br label %41

41:                                               ; preds = %38, %12
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @reset_ebb_with_clear_mask(i32 %42)
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @trace_log_counter(i32, i32) #1

declare dso_local i32 @trace_log_reg(i32, i32, i32) #1

declare dso_local i32 @trace_log_string(i32, i8*) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @reset_ebb_with_clear_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
