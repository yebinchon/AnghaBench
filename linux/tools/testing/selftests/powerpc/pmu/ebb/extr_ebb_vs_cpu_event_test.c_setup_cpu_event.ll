; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb_vs_cpu_event_test.c_setup_cpu_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb_vs_cpu_event_test.c_setup_cpu_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"PM_RUN_INST_CMPL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event*, i32)* @setup_cpu_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_cpu_event(%struct.event* %0, i32 %1) #0 {
  %3 = alloca %struct.event*, align 8
  %4 = alloca i32, align 4
  store %struct.event* %0, %struct.event** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.event*, %struct.event** %3, align 8
  %6 = call i32 @event_init_named(%struct.event* %5, i32 262394, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.event*, %struct.event** %3, align 8
  %8 = getelementptr inbounds %struct.event, %struct.event* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.event*, %struct.event** %3, align 8
  %11 = getelementptr inbounds %struct.event, %struct.event* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load %struct.event*, %struct.event** %3, align 8
  %14 = getelementptr inbounds %struct.event, %struct.event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 1, i32* %15, align 4
  %16 = call i32 @require_paranoia_below(i32 1)
  %17 = call i32 @SKIP_IF(i32 %16)
  %18 = load %struct.event*, %struct.event** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @event_open_with_cpu(%struct.event* %18, i32 %19)
  %21 = call i32 @FAIL_IF(i32 %20)
  %22 = load %struct.event*, %struct.event** %3, align 8
  %23 = call i32 @event_enable(%struct.event* %22)
  %24 = call i32 @FAIL_IF(i32 %23)
  ret i32 0
}

declare dso_local i32 @event_init_named(%struct.event*, i32, i8*) #1

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @require_paranoia_below(i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @event_open_with_cpu(%struct.event*, i32) #1

declare dso_local i32 @event_enable(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
