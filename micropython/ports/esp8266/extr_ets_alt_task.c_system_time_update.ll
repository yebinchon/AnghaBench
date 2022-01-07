; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_ets_alt_task.c_system_time_update.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_ets_alt_task.c_system_time_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@system_time_low_word = common dso_local global i64 0, align 8
@system_time_high_word = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @system_time_update() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (...) @ets_intr_lock()
  %3 = call i64 (...) @system_get_time()
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @system_time_low_word, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @system_time_high_word, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @system_time_high_word, align 4
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i64, i64* %1, align 8
  store i64 %11, i64* @system_time_low_word, align 8
  %12 = call i32 (...) @ets_intr_unlock()
  ret void
}

declare dso_local i32 @ets_intr_lock(...) #1

declare dso_local i64 @system_get_time(...) #1

declare dso_local i32 @ets_intr_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
