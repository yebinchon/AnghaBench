; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_instruction_count_test.c_instruction_count.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_instruction_count_test.c_instruction_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"PM_RUN_INST_CMPL\00", align 1
@COUNTER_OVERFLOW = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@pmc4_ebb_callee = common dso_local global i32 0, align 4
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@MMCR0_FC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Overhead of null loop: %lu instructions\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Finished OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @instruction_count() #0 {
  %1 = alloca %struct.event, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @ebb_is_supported()
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @SKIP_IF(i32 %6)
  %8 = call i32 @event_init_named(%struct.event* %1, i32 262394, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @event_leader_ebb_init(%struct.event* %1)
  %10 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 1, i32* %15, align 4
  %16 = call i32 @event_open(%struct.event* %1)
  %17 = call i32 @FAIL_IF(i32 %16)
  %18 = call i32 @ebb_event_enable(%struct.event* %1)
  %19 = call i32 @FAIL_IF(i32 %18)
  %20 = load i32, i32* @COUNTER_OVERFLOW, align 4
  store i32 %20, i32* @sample_period, align 4
  %21 = load i32, i32* @pmc4_ebb_callee, align 4
  %22 = call i32 @setup_ebb_handler(i32 %21)
  %23 = load i32, i32* @SPRN_MMCR0, align 4
  %24 = load i32, i32* @SPRN_MMCR0, align 4
  %25 = call i32 @mfspr(i32 %24)
  %26 = load i32, i32* @MMCR0_FC, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @mtspr(i32 %23, i32 %28)
  %30 = call i32 (...) @ebb_global_enable()
  %31 = call i32 @determine_overhead(%struct.event* %1)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @do_count_loop(%struct.event* %1, i32 1048576, i32 %34, i32 1)
  %36 = call i32 @FAIL_IF(i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @do_count_loop(%struct.event* %1, i32 10485760, i32 %37, i32 1)
  %39 = call i32 @FAIL_IF(i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @do_count_loop(%struct.event* %1, i32 104857600, i32 %40, i32 1)
  %42 = call i32 @FAIL_IF(i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @do_count_loop(%struct.event* %1, i32 1073741824, i32 %43, i32 1)
  %45 = call i32 @FAIL_IF(i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @do_count_loop(%struct.event* %1, i32 0, i32 %46, i32 1)
  %48 = call i32 @FAIL_IF(i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @do_count_loop(%struct.event* %1, i32 0, i32 %49, i32 1)
  %51 = call i32 @FAIL_IF(i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @do_count_loop(%struct.event* %1, i32 0, i32 %52, i32 1)
  %54 = call i32 @FAIL_IF(i32 %53)
  %55 = call i32 (...) @ebb_global_disable()
  %56 = call i32 @event_close(%struct.event* %1)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @ebb_is_supported(...) #1

declare dso_local i32 @event_init_named(%struct.event*, i32, i8*) #1

declare dso_local i32 @event_leader_ebb_init(%struct.event*) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @event_open(%struct.event*) #1

declare dso_local i32 @ebb_event_enable(%struct.event*) #1

declare dso_local i32 @setup_ebb_handler(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @ebb_global_enable(...) #1

declare dso_local i32 @determine_overhead(%struct.event*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @do_count_loop(%struct.event*, i32, i32, i32) #1

declare dso_local i32 @ebb_global_disable(...) #1

declare dso_local i32 @event_close(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
