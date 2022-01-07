; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_no_handler_test.c_no_handler_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_no_handler_test.c_no_handler_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@SPRN_EBBHR = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@SPRN_PMC1 = common dso_local global i32 0, align 4
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @no_handler_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @no_handler_test() #0 {
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
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 1, i32* %16, align 4
  %17 = call i32 @event_open(%struct.event* %1)
  %18 = call i32 @FAIL_IF(i32 %17)
  %19 = call i32 @ebb_event_enable(%struct.event* %1)
  %20 = call i32 @FAIL_IF(i32 %19)
  %21 = load i32, i32* @SPRN_EBBHR, align 4
  %22 = call i32 @mfspr(i32 %21)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @FAIL_IF(i32 %25)
  store i32 1000, i32* @sample_period, align 4
  %27 = load i32, i32* @SPRN_PMC1, align 4
  %28 = load i32, i32* @sample_period, align 4
  %29 = call i32 @pmc_sample_period(i32 %28)
  %30 = call i32 @mtspr(i32 %27, i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %36, %0
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 1000
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = call i32 (...) @mb()
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %31

39:                                               ; preds = %31
  %40 = call i32 (...) @dump_ebb_state()
  %41 = load i32, i32* @SPRN_MMCR0, align 4
  %42 = call i32 @mfspr(i32 %41)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, -2147483520
  %45 = zext i1 %44 to i32
  %46 = call i32 @FAIL_IF(i32 %45)
  %47 = call i32 @event_close(%struct.event* %1)
  %48 = call i32 (...) @dump_ebb_state()
  ret i32 0
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @ebb_is_supported(...) #1

declare dso_local i32 @event_init_named(%struct.event*, i32, i8*) #1

declare dso_local i32 @event_leader_ebb_init(%struct.event*) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @event_open(%struct.event*) #1

declare dso_local i32 @ebb_event_enable(%struct.event*) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @pmc_sample_period(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @dump_ebb_state(...) #1

declare dso_local i32 @event_close(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
