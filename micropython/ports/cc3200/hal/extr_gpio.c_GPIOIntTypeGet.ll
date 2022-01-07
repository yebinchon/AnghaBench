; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_gpio.c_GPIOIntTypeGet.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_gpio.c_GPIOIntTypeGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_O_GPIO_IBE = common dso_local global i64 0, align 8
@GPIO_O_GPIO_IS = common dso_local global i64 0, align 8
@GPIO_O_GPIO_IEV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GPIOIntTypeGet(i64 %0, i8 zeroext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @GPIOBaseValid(i64 %8)
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @GPIO_O_GPIO_IBE, align 8
  %13 = add i64 %11, %12
  %14 = call i64 @HWREG(i64 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @GPIO_O_GPIO_IS, align 8
  %17 = add i64 %15, %16
  %18 = call i64 @HWREG(i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @GPIO_O_GPIO_IEV, align 8
  %21 = add i64 %19, %20
  %22 = call i64 @HWREG(i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i64
  %26 = and i64 %23, %25
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i64
  %33 = and i64 %30, %32
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 2, i32 0
  %37 = or i32 %29, %36
  %38 = load i64, i64* %7, align 8
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i64
  %41 = and i64 %38, %40
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 4, i32 0
  %45 = or i32 %37, %44
  %46 = sext i32 %45 to i64
  ret i64 %46
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
