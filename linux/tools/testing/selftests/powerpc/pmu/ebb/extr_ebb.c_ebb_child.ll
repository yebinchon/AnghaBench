; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb.c_ebb_child.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb.c_ebb_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.pipe = type { i32 }
%struct.event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@standard_ebb_callee = common dso_local global i32 0, align 4
@SPRN_PMC1 = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SPRN_MMCRA = common dso_local global i32 0, align 4
@SPRN_MMCR2 = common dso_local global i32 0, align 4
@SPRN_MMCR0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebb_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.pipe, align 4
  %5 = alloca %union.pipe, align 4
  %6 = alloca %struct.event, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %union.pipe, %union.pipe* %4, i32 0, i32 0
  store i32 %0, i32* %8, align 4
  %9 = getelementptr inbounds %union.pipe, %union.pipe* %5, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  %10 = getelementptr inbounds %union.pipe, %union.pipe* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @wait_for_parent(i32 %11)
  %13 = call i32 @FAIL_IF(i32 %12)
  %14 = call i32 @event_init_named(%struct.event* %6, i32 65566, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @event_leader_ebb_init(%struct.event* %6)
  %16 = getelementptr inbounds %struct.event, %struct.event* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.event, %struct.event* %6, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.event, %struct.event* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 1, i32* %21, align 4
  %22 = call i32 @event_open(%struct.event* %6)
  %23 = call i32 @FAIL_IF(i32 %22)
  %24 = call i32 @ebb_enable_pmc_counting(i32 1)
  %25 = load i32, i32* @standard_ebb_callee, align 4
  %26 = call i32 @setup_ebb_handler(i32 %25)
  %27 = call i32 (...) @ebb_global_enable()
  %28 = call i32 @event_enable(%struct.event* %6)
  %29 = call i32 @FAIL_IF(i32 %28)
  %30 = call i64 @event_read(%struct.event* %6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = getelementptr inbounds %union.pipe, %union.pipe* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @notify_parent_of_error(i32 %34)
  store i32 2, i32* %3, align 4
  br label %80

36:                                               ; preds = %2
  %37 = load i32, i32* @SPRN_PMC1, align 4
  %38 = load i32, i32* @sample_period, align 4
  %39 = call i32 @pmc_sample_period(i32 %38)
  %40 = call i32 @mtspr(i32 %37, i32 %39)
  %41 = getelementptr inbounds %union.pipe, %union.pipe* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @notify_parent(i32 %42)
  %44 = call i32 @FAIL_IF(i32 %43)
  %45 = getelementptr inbounds %union.pipe, %union.pipe* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @wait_for_parent(i32 %46)
  %48 = call i32 @FAIL_IF(i32 %47)
  %49 = getelementptr inbounds %union.pipe, %union.pipe* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @notify_parent(i32 %50)
  %52 = call i32 @FAIL_IF(i32 %51)
  br label %53

53:                                               ; preds = %56, %36
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %55 = icmp slt i32 %54, 20
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = call i32 (...) @core_busy_loop()
  %58 = call i32 @FAIL_IF(i32 %57)
  %59 = load i32, i32* @SPRN_MMCRA, align 4
  %60 = call i32 @mfspr(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @SPRN_MMCR2, align 4
  %62 = call i32 @mfspr(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @SPRN_MMCR0, align 4
  %66 = call i32 @mfspr(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %53

69:                                               ; preds = %53
  %70 = call i32 (...) @ebb_global_disable()
  %71 = call i32 (...) @ebb_freeze_pmcs()
  %72 = load i32, i32* @sample_period, align 4
  %73 = call i32 @count_pmc(i32 1, i32 %72)
  %74 = call i32 (...) @dump_ebb_state()
  %75 = call i32 @event_close(%struct.event* %6)
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @FAIL_IF(i32 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %69, %32
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @wait_for_parent(i32) #1

declare dso_local i32 @event_init_named(%struct.event*, i32, i8*) #1

declare dso_local i32 @event_leader_ebb_init(%struct.event*) #1

declare dso_local i32 @event_open(%struct.event*) #1

declare dso_local i32 @ebb_enable_pmc_counting(i32) #1

declare dso_local i32 @setup_ebb_handler(i32) #1

declare dso_local i32 @ebb_global_enable(...) #1

declare dso_local i32 @event_enable(%struct.event*) #1

declare dso_local i64 @event_read(%struct.event*) #1

declare dso_local i32 @notify_parent_of_error(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @pmc_sample_period(i32) #1

declare dso_local i32 @notify_parent(i32) #1

declare dso_local i32 @core_busy_loop(...) #1

declare dso_local i32 @mfspr(i32) #1

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
