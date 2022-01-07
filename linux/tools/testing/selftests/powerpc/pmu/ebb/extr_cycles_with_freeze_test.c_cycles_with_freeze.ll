; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_cycles_with_freeze_test.c_cycles_with_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_cycles_with_freeze_test.c_cycles_with_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@ebb_callee = common dso_local global i32 0, align 4
@SPRN_PMC1 = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@counters_frozen = common dso_local global i32 0, align 4
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@MMCR0_FC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Outside of loop, FC NOT set MMCR0 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"EBBs while frozen %d\0A\00", align 1
@ebbs_while_frozen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cycles_with_freeze() #0 {
  %1 = alloca %struct.event, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @ebb_is_supported()
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @SKIP_IF(i32 %7)
  %9 = call i32 @event_init_named(%struct.event* %1, i32 65566, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @event_leader_ebb_init(%struct.event* %1)
  %11 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 1, i32* %16, align 4
  %17 = call i32 @event_open(%struct.event* %1)
  %18 = call i32 @FAIL_IF(i32 %17)
  %19 = load i32, i32* @ebb_callee, align 4
  %20 = call i32 @setup_ebb_handler(i32 %19)
  %21 = call i32 (...) @ebb_global_enable()
  %22 = call i32 @ebb_event_enable(%struct.event* %1)
  %23 = call i32 @FAIL_IF(i32 %22)
  %24 = load i32, i32* @SPRN_PMC1, align 4
  %25 = load i32, i32* @sample_period, align 4
  %26 = call i32 @pmc_sample_period(i32 %25)
  %27 = call i32 @mtspr(i32 %24, i32 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %66, %0
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %30 = icmp slt i32 %29, 20
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %28
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %36 = icmp slt i32 %35, 1
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i1 [ true, %31 ], [ %36, %34 ]
  br i1 %38, label %39, label %67

39:                                               ; preds = %37
  store i32 0, i32* @counters_frozen, align 4
  %40 = call i32 (...) @mb()
  %41 = load i32, i32* @SPRN_MMCR0, align 4
  %42 = load i32, i32* @SPRN_MMCR0, align 4
  %43 = call i32 @mfspr(i32 %42)
  %44 = load i32, i32* @MMCR0_FC, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = call i32 @mtspr(i32 %41, i32 %46)
  %48 = call i32 (...) @core_busy_loop()
  %49 = call i32 @FAIL_IF(i32 %48)
  store i32 1, i32* @counters_frozen, align 4
  %50 = call i32 (...) @mb()
  %51 = load i32, i32* @SPRN_MMCR0, align 4
  %52 = load i32, i32* @SPRN_MMCR0, align 4
  %53 = call i32 @mfspr(i32 %52)
  %54 = load i32, i32* @MMCR0_FC, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @mtspr(i32 %51, i32 %55)
  %57 = load i32, i32* @SPRN_MMCR0, align 4
  %58 = call i32 @mfspr(i32 %57)
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @MMCR0_FC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %39
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %39
  br label %28

67:                                               ; preds = %37
  %68 = call i32 (...) @ebb_global_disable()
  %69 = call i32 (...) @ebb_freeze_pmcs()
  %70 = load i32, i32* @sample_period, align 4
  %71 = call i32 @count_pmc(i32 1, i32 %70)
  %72 = call i32 (...) @dump_ebb_state()
  %73 = load i32, i32* @ebbs_while_frozen, align 4
  %74 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = call i32 @event_close(%struct.event* %1)
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @FAIL_IF(i32 %78)
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @FAIL_IF(i32 %80)
  ret i32 0
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @ebb_is_supported(...) #1

declare dso_local i32 @event_init_named(%struct.event*, i32, i8*) #1

declare dso_local i32 @event_leader_ebb_init(%struct.event*) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @event_open(%struct.event*) #1

declare dso_local i32 @setup_ebb_handler(i32) #1

declare dso_local i32 @ebb_global_enable(...) #1

declare dso_local i32 @ebb_event_enable(%struct.event*) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @pmc_sample_period(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @core_busy_loop(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ebb_global_disable(...) #1

declare dso_local i32 @ebb_freeze_pmcs(...) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @dump_ebb_state(...) #1

declare dso_local i32 @event_close(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
