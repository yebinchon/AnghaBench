; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_pmae_handling_test.c_test_body.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_pmae_handling_test.c_test_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@syscall_ebb_callee = common dso_local global i32 0, align 4
@SPRN_PMC1 = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@mmcr0_mismatch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Saw MMCR0 before 0x%lx after 0x%lx\0A\00", align 1
@before = common dso_local global i32 0, align 4
@after = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_body() #0 {
  %1 = alloca %struct.event, align 4
  %2 = call i32 (...) @ebb_is_supported()
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @SKIP_IF(i32 %5)
  %7 = call i32 @event_init_named(%struct.event* %1, i32 65566, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @event_leader_ebb_init(%struct.event* %1)
  %9 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 1, i32* %14, align 4
  %15 = call i32 @event_open(%struct.event* %1)
  %16 = call i32 @FAIL_IF(i32 %15)
  %17 = load i32, i32* @syscall_ebb_callee, align 4
  %18 = call i32 @setup_ebb_handler(i32 %17)
  %19 = call i32 (...) @ebb_global_enable()
  %20 = call i32 @ebb_event_enable(%struct.event* %1)
  %21 = call i32 @FAIL_IF(i32 %20)
  %22 = load i32, i32* @SPRN_PMC1, align 4
  %23 = load i32, i32* @sample_period, align 4
  %24 = call i32 @pmc_sample_period(i32 %23)
  %25 = call i32 @mtspr(i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %35, %0
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %28 = icmp slt i32 %27, 20
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @mmcr0_mismatch, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = call i32 (...) @core_busy_loop()
  %37 = call i32 @FAIL_IF(i32 %36)
  br label %26

38:                                               ; preds = %33
  %39 = call i32 (...) @ebb_global_disable()
  %40 = call i32 (...) @ebb_freeze_pmcs()
  %41 = load i32, i32* @sample_period, align 4
  %42 = call i32 @count_pmc(i32 1, i32 %41)
  %43 = call i32 (...) @dump_ebb_state()
  %44 = load i32, i32* @mmcr0_mismatch, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @before, align 4
  %48 = load i32, i32* @after, align 4
  %49 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %38
  %51 = call i32 @event_close(%struct.event* %1)
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @FAIL_IF(i32 %54)
  %56 = load i32, i32* @mmcr0_mismatch, align 4
  %57 = call i32 @FAIL_IF(i32 %56)
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

declare dso_local i32 @core_busy_loop(...) #1

declare dso_local i32 @ebb_global_disable(...) #1

declare dso_local i32 @ebb_freeze_pmcs(...) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @dump_ebb_state(...) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @event_close(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
