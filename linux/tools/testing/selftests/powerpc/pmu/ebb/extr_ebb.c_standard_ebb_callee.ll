; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb.c_standard_ebb_callee.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb.c_standard_ebb_callee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SPRN_BESCR = common dso_local global i32 0, align 4
@BESCR_PMEO = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @standard_ebb_callee() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @SPRN_BESCR, align 4
  %5 = call i32 @mfspr(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @BESCR_PMEO, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 2), align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 2), align 8
  br label %54

13:                                               ; preds = %0
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 1), align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 1), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 2), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 1), align 4
  %18 = call i32 @trace_log_counter(i32 %16, i32 %17)
  %19 = load i32, i32* @SPRN_MMCR0, align 4
  %20 = call i32 @mfspr(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 2), align 8
  %22 = load i32, i32* @SPRN_MMCR0, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @trace_log_reg(i32 %21, i32 %22, i32 %23)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %44, %13
  %26 = load i32, i32* %2, align 4
  %27 = icmp sle i32 %26, 6
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 1), align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i64 @PMC_INDEX(i32 %30)
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @sample_period, align 4
  %38 = call i64 @count_pmc(i32 %36, i32 %37)
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %35, %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %25

47:                                               ; preds = %25
  %48 = load i32, i32* %1, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 0), align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ebb_state, i32 0, i32 0, i32 0), align 8
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %10
  %55 = call i32 (...) @reset_ebb()
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @trace_log_counter(i32, i32) #1

declare dso_local i32 @trace_log_reg(i32, i32, i32) #1

declare dso_local i64 @PMC_INDEX(i32) #1

declare dso_local i64 @count_pmc(i32, i32) #1

declare dso_local i32 @reset_ebb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
