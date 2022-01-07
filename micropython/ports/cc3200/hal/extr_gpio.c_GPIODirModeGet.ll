; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_gpio.c_GPIODirModeGet.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_gpio.c_GPIODirModeGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_O_GPIO_DIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GPIODirModeGet(i64 %0, i8 zeroext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @GPIOBaseValid(i64 %6)
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @GPIO_O_GPIO_DIR, align 8
  %11 = add i64 %9, %10
  %12 = call i64 @HWREG(i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i64
  %16 = and i64 %13, %15
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = sext i32 %19 to i64
  ret i64 %20
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @GPIOBaseValid(i64) #1

declare dso_local i64 @HWREG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
