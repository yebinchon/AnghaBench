; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_xt_interrupt.c_xt_host_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_xt_interrupt.c_xt_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xt_host_init() #0 {
  %1 = call i32 (...) @XT_INT_INIT()
  %2 = call i32 (...) @XT_INT_OFF()
  %3 = call i32 (...) @XT_DATA_LO()
  %4 = call i32 (...) @XT_CLOCK_LO()
  %5 = call i32 @_delay_ms(i32 20)
  %6 = call i32 (...) @XT_CLOCK_IN()
  %7 = call i32 (...) @XT_DATA_IN()
  %8 = call i32 (...) @XT_INT_ON()
  ret void
}

declare dso_local i32 @XT_INT_INIT(...) #1

declare dso_local i32 @XT_INT_OFF(...) #1

declare dso_local i32 @XT_DATA_LO(...) #1

declare dso_local i32 @XT_CLOCK_LO(...) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @XT_CLOCK_IN(...) #1

declare dso_local i32 @XT_DATA_IN(...) #1

declare dso_local i32 @XT_INT_ON(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
