; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_gpio.c_GPIOIntRegister.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_gpio.c_GPIOIntRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GPIOIntRegister(i64 %0, void ()* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca void ()*, align 8
  store i64 %0, i64* %3, align 8
  store void ()* %1, void ()** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @GPIOBaseValid(i64 %5)
  %7 = call i32 @ASSERT(i32 %6)
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @GPIOGetIntNumber(i64 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load void ()*, void ()** %4, align 8
  %12 = bitcast void ()* %11 to void (...)*
  %13 = call i32 @IntRegister(i64 %10, void (...)* %12)
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @IntEnable(i64 %14)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @GPIOBaseValid(i64) #1

declare dso_local i64 @GPIOGetIntNumber(i64) #1

declare dso_local i32 @IntRegister(i64, void (...)*) #1

declare dso_local i32 @IntEnable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
