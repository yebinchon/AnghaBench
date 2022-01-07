; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_cycles_with_mmcr2_test.c_cycles_with_mmcr2.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_cycles_with_mmcr2_test.c_cycles_with_mmcr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@standard_ebb_callee = common dso_local global i32 0, align 4
@SPRN_PMC1 = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@MMCR2_EXPECTED_1 = common dso_local global i64 0, align 8
@MMCR2_EXPECTED_2 = common dso_local global i64 0, align 8
@ebb_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SPRN_MMCR2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Bad MMCR2 value seen is 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cycles_with_mmcr2() #0 {
  %1 = alloca %struct.event, align 4
  %2 = alloca i64, align 8
  %3 = alloca [2 x i64], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @ebb_is_supported()
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @SKIP_IF(i32 %10)
  %12 = call i32 @event_init_named(%struct.event* %1, i32 65566, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @event_leader_ebb_init(%struct.event* %1)
  %14 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store i32 1, i32* %19, align 4
  %20 = call i32 @event_open(%struct.event* %1)
  %21 = call i32 @FAIL_IF(i32 %20)
  %22 = call i32 @ebb_enable_pmc_counting(i32 1)
  %23 = load i32, i32* @standard_ebb_callee, align 4
  %24 = call i32 @setup_ebb_handler(i32 %23)
  %25 = call i32 (...) @ebb_global_enable()
  %26 = call i32 @ebb_event_enable(%struct.event* %1)
  %27 = call i32 @FAIL_IF(i32 %26)
  %28 = load i32, i32* @SPRN_PMC1, align 4
  %29 = load i32, i32* @sample_period, align 4
  %30 = call i64 @pmc_sample_period(i32 %29)
  %31 = call i32 @mtspr(i32 %28, i64 %30)
  %32 = load i64, i64* @MMCR2_EXPECTED_1, align 8
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %32, i64* %33, align 16
  %34 = load i64, i64* @MMCR2_EXPECTED_2, align 8
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %68, %0
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %38 = icmp slt i32 %37, 20
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %36
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %44 = icmp slt i32 %43, 1
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ true, %39 ], [ %44, %42 ]
  br i1 %46, label %47, label %71

47:                                               ; preds = %45
  %48 = load i32, i32* @SPRN_MMCR2, align 4
  %49 = load i32, i32* %5, align 4
  %50 = srem i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @mtspr(i32 %48, i64 %53)
  %55 = call i32 (...) @core_busy_loop()
  %56 = call i32 @FAIL_IF(i32 %55)
  %57 = load i32, i32* @SPRN_MMCR2, align 4
  %58 = call i64 @mfspr(i32 %57)
  store i64 %58, i64* %2, align 8
  %59 = load i64, i64* %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = srem i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %59, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  %67 = load i64, i64* %2, align 8
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %66, %47
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %36

71:                                               ; preds = %45
  %72 = call i32 (...) @ebb_global_disable()
  %73 = call i32 (...) @ebb_freeze_pmcs()
  %74 = load i32, i32* @sample_period, align 4
  %75 = call i32 @count_pmc(i32 1, i32 %74)
  %76 = call i32 (...) @dump_ebb_state()
  %77 = call i32 @event_close(%struct.event* %1)
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @FAIL_IF(i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  br label %87

87:                                               ; preds = %84, %71
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @FAIL_IF(i32 %88)
  ret i32 0
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @ebb_is_supported(...) #1

declare dso_local i32 @event_init_named(%struct.event*, i32, i8*) #1

declare dso_local i32 @event_leader_ebb_init(%struct.event*) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @event_open(%struct.event*) #1

declare dso_local i32 @ebb_enable_pmc_counting(i32) #1

declare dso_local i32 @setup_ebb_handler(i32) #1

declare dso_local i32 @ebb_global_enable(...) #1

declare dso_local i32 @ebb_event_enable(%struct.event*) #1

declare dso_local i32 @mtspr(i32, i64) #1

declare dso_local i64 @pmc_sample_period(i32) #1

declare dso_local i32 @core_busy_loop(...) #1

declare dso_local i64 @mfspr(i32) #1

declare dso_local i32 @ebb_global_disable(...) #1

declare dso_local i32 @ebb_freeze_pmcs(...) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @dump_ebb_state(...) #1

declare dso_local i32 @event_close(%struct.event*) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
