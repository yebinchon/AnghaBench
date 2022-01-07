; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_pmc56_overflow_test.c_ebb_callee.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_pmc56_overflow_test.c_ebb_callee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SPRN_BESCR = common dso_local global i32 0, align 4
@BESCR_PMEO = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@sample_period = common dso_local global i32 0, align 4
@SPRN_PMC5 = common dso_local global i32 0, align 4
@COUNTER_OVERFLOW = common dso_local global i32 0, align 4
@pmc56_overflowed = common dso_local global i32 0, align 4
@SPRN_PMC6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ebb_callee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ebb_callee() #0 {
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
  br label %38

11:                                               ; preds = %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %14 = load i32, i32* @sample_period, align 4
  %15 = call i32 @count_pmc(i32 2, i32 %14)
  %16 = load i32, i32* @SPRN_PMC5, align 4
  %17 = call i32 @mfspr(i32 %16)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @COUNTER_OVERFLOW, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* @pmc56_overflowed, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @pmc56_overflowed, align 4
  br label %24

24:                                               ; preds = %21, %11
  %25 = load i32, i32* @COUNTER_OVERFLOW, align 4
  %26 = call i32 @count_pmc(i32 5, i32 %25)
  %27 = load i32, i32* @SPRN_PMC6, align 4
  %28 = call i32 @mfspr(i32 %27)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @COUNTER_OVERFLOW, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @pmc56_overflowed, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @pmc56_overflowed, align 4
  br label %35

35:                                               ; preds = %32, %24
  %36 = load i32, i32* @COUNTER_OVERFLOW, align 4
  %37 = call i32 @count_pmc(i32 6, i32 %36)
  br label %38

38:                                               ; preds = %35, %8
  %39 = call i32 (...) @reset_ebb()
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @reset_ebb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
