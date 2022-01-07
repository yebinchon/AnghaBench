; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/tsl2561/extr_tsl2561.c_tsl2561GetLuminosity.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/tsl2561/extr_tsl2561.c_tsl2561GetLuminosity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_tsl2561Initialised = common dso_local global i32 0, align 4
@TSL2561_ERROR_NOINIT = common dso_local global i64 0, align 8
@TSL2561_ERROR_OK = common dso_local global i64 0, align 8
@_tsl2561IntegrationTime = common dso_local global i32 0, align 4
@TSL2561_COMMAND_BIT = common dso_local global i32 0, align 4
@TSL2561_WORD_BIT = common dso_local global i32 0, align 4
@TSL2561_REGISTER_CHAN0_LOW = common dso_local global i32 0, align 4
@TSL2561_REGISTER_CHAN1_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tsl2561GetLuminosity(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @_tsl2561Initialised, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* @TSL2561_ERROR_NOINIT, align 8
  store i64 %10, i64* %3, align 8
  br label %58

11:                                               ; preds = %2
  %12 = load i64, i64* @TSL2561_ERROR_OK, align 8
  store i64 %12, i64* %6, align 8
  %13 = call i64 (...) @tsl2561Enable()
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %3, align 8
  br label %58

18:                                               ; preds = %11
  %19 = load i32, i32* @_tsl2561IntegrationTime, align 4
  switch i32 %19, label %24 [
    i32 128, label %20
    i32 129, label %22
  ]

20:                                               ; preds = %18
  %21 = call i32 @os_delay_us(i32 14000)
  br label %26

22:                                               ; preds = %18
  %23 = call i32 @os_delay_us(i32 102000)
  br label %26

24:                                               ; preds = %18
  %25 = call i32 @os_delay_us(i32 404000)
  br label %26

26:                                               ; preds = %24, %22, %20
  %27 = load i32, i32* @TSL2561_COMMAND_BIT, align 4
  %28 = load i32, i32* @TSL2561_WORD_BIT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @TSL2561_REGISTER_CHAN0_LOW, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @tsl2561Read16(i32 %31, i32* %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %3, align 8
  br label %58

38:                                               ; preds = %26
  %39 = load i32, i32* @TSL2561_COMMAND_BIT, align 4
  %40 = load i32, i32* @TSL2561_WORD_BIT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @TSL2561_REGISTER_CHAN1_LOW, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @tsl2561Read16(i32 %43, i32* %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i64, i64* %6, align 8
  store i64 %49, i64* %3, align 8
  br label %58

50:                                               ; preds = %38
  %51 = call i64 (...) @tsl2561Disable()
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %3, align 8
  br label %58

56:                                               ; preds = %50
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %56, %54, %48, %36, %16, %9
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i64 @tsl2561Enable(...) #1

declare dso_local i32 @os_delay_us(i32) #1

declare dso_local i64 @tsl2561Read16(i32, i32*) #1

declare dso_local i64 @tsl2561Disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
