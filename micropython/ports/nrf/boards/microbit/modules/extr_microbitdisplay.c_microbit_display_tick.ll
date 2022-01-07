; ModuleID = '/home/carl/AnghaBench/micropython/ports/nrf/boards/microbit/modules/extr_microbitdisplay.c_microbit_display_tick.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/nrf/boards/microbit/modules/extr_microbitdisplay.c_microbit_display_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@microbit_display_obj = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GREYSCALE_MASK = common dso_local global i32 0, align 4
@DISPLAY_TICKER_SLOT = common dso_local global i32 0, align 4
@callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @microbit_display_tick() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @microbit_display_obj, i32 0, i32 2), align 8
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %15

4:                                                ; preds = %0
  %5 = call i32 @displayAdvanceRow(%struct.TYPE_3__* @microbit_display_obj)
  %6 = call i32 (...) @microbit_display_update()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @microbit_display_obj, i32 0, i32 1), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @microbit_display_obj, i32 0, i32 0), align 8
  %8 = load i32, i32* @GREYSCALE_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i32, i32* @DISPLAY_TICKER_SLOT, align 4
  %13 = load i32, i32* @callback, align 4
  %14 = call i32 @set_ticker_callback(i32 %12, i32 %13, i32 1800)
  br label %15

15:                                               ; preds = %3, %11, %4
  ret void
}

declare dso_local i32 @displayAdvanceRow(%struct.TYPE_3__*) #1

declare dso_local i32 @microbit_display_update(...) #1

declare dso_local i32 @set_ticker_callback(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
