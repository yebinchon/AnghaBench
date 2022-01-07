; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_instruction_count_test.c_pmc4_ebb_callee.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_instruction_count_test.c_pmc4_ebb_callee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SPRN_BESCR = common dso_local global i32 0, align 4
@BESCR_PMEO = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@sample_period = common dso_local global i32 0, align 4
@counters_frozen = common dso_local global i64 0, align 8
@MMCR0_PMAO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmc4_ebb_callee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmc4_ebb_callee() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SPRN_BESCR, align 4
  %3 = call i32 @mfspr(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @BESCR_PMEO, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 1), align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 1), align 4
  br label %16

11:                                               ; preds = %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %14 = load i32, i32* @sample_period, align 4
  %15 = call i32 @count_pmc(i32 4, i32 %14)
  br label %16

16:                                               ; preds = %11, %8
  %17 = load i64, i64* @counters_frozen, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @MMCR0_PMAO, align 4
  %21 = call i32 @reset_ebb_with_clear_mask(i32 %20)
  br label %24

22:                                               ; preds = %16
  %23 = call i32 (...) @reset_ebb()
  br label %24

24:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @reset_ebb_with_clear_mask(i32) #1

declare dso_local i32 @reset_ebb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
