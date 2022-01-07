; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/3/bl4ckout31/src/extr_timer.c_timer_init.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/3/bl4ckout31/src/extr_timer.c_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_CLO = common dso_local global i32 0, align 4
@curVal = common dso_local global i32 0, align 4
@interval = common dso_local global i64 0, align 8
@TIMER_C1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_init() #0 {
  %1 = load i32, i32* @TIMER_CLO, align 4
  %2 = call i32 @get32(i32 %1)
  store i32 %2, i32* @curVal, align 4
  %3 = load i64, i64* @interval, align 8
  %4 = load i32, i32* @curVal, align 4
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %5, %3
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* @curVal, align 4
  %8 = load i32, i32* @TIMER_C1, align 4
  %9 = load i32, i32* @curVal, align 4
  %10 = call i32 @put32(i32 %8, i32 %9)
  ret void
}

declare dso_local i32 @get32(i32) #1

declare dso_local i32 @put32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
