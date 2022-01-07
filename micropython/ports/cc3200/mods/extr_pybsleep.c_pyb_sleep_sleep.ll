; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_pybsleep.c_pyb_sleep_sleep.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_pybsleep.c_pyb_sleep_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64 }

@pybsleep_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PYB_PWR_MODE_LPDS = common dso_local global i32 0, align 4
@FAILED_SLEEP_DELAY_MS = common dso_local global i32 0, align 4
@PRCM_LPDS_TIMER = common dso_local global i32 0, align 4
@PRCM_LPDS_HOST_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pyb_sleep_sleep() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pybsleep_data, i32 0, i32 1), align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pybsleep_data, i32 0, i32 1), align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PYB_PWR_MODE_LPDS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = call i32 (...) @setup_timer_lpds_wake()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @FAILED_SLEEP_DELAY_MS, align 4
  %19 = call i32 @mp_hal_delay_ms(i32 %18)
  br label %46

20:                                               ; preds = %14
  br label %24

21:                                               ; preds = %7, %0
  %22 = load i32, i32* @PRCM_LPDS_TIMER, align 4
  %23 = call i32 @MAP_PRCMLPDSWakeupSourceDisable(i32 %22)
  br label %24

24:                                               ; preds = %21, %20
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pybsleep_data, i32 0, i32 0), align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @PRCM_LPDS_HOST_IRQ, align 4
  %31 = call i32 @MAP_PRCMLPDSWakeupSourceEnable(i32 %30)
  %32 = call i32 (...) @server_sleep_sockets()
  br label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @PRCM_LPDS_HOST_IRQ, align 4
  %35 = call i32 @MAP_PRCMLPDSWakeupSourceDisable(i32 %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = call i32 (...) @disable_irq()
  store i32 %37, i32* %2, align 4
  %38 = call i64 @nlr_push(i32* %1)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = call i32 (...) @pyb_sleep_suspend_enter()
  %42 = call i32 (...) @nlr_pop()
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @enable_irq(i32 %44)
  br label %46

46:                                               ; preds = %43, %17
  ret void
}

declare dso_local i32 @setup_timer_lpds_wake(...) #1

declare dso_local i32 @mp_hal_delay_ms(i32) #1

declare dso_local i32 @MAP_PRCMLPDSWakeupSourceDisable(i32) #1

declare dso_local i32 @MAP_PRCMLPDSWakeupSourceEnable(i32) #1

declare dso_local i32 @server_sleep_sockets(...) #1

declare dso_local i32 @disable_irq(...) #1

declare dso_local i64 @nlr_push(i32*) #1

declare dso_local i32 @pyb_sleep_suspend_enter(...) #1

declare dso_local i32 @nlr_pop(...) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
