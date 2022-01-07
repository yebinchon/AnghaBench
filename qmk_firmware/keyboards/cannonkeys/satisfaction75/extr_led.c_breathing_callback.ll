; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_led.c_breathing_callback.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_led.c_breathing_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@breathing_period = common dso_local global i32 0, align 4
@BREATHING_STEPS = common dso_local global i32 0, align 4
@breathing_counter = common dso_local global i32 0, align 4
@breathing_halt = common dso_local global i64 0, align 8
@BREATHING_HALT_ON = common dso_local global i64 0, align 8
@BREATHING_HALT_OFF = common dso_local global i64 0, align 8
@breathing_table = common dso_local global i32* null, align 8
@PWMD3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @breathing_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @breathing_callback(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @breathing_period, align 4
  %8 = mul nsw i32 %7, 256
  %9 = load i32, i32* @BREATHING_STEPS, align 4
  %10 = sdiv i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @breathing_counter, align 4
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* @breathing_period, align 4
  %14 = mul nsw i32 %13, 256
  %15 = srem i32 %12, %14
  store i32 %15, i32* @breathing_counter, align 4
  %16 = load i32, i32* @breathing_counter, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sdiv i32 %16, %17
  %19 = load i32, i32* @BREATHING_STEPS, align 4
  %20 = srem i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load i64, i64* @breathing_halt, align 8
  %22 = load i64, i64* @BREATHING_HALT_ON, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @BREATHING_STEPS, align 4
  %27 = sdiv i32 %26, 2
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %24, %1
  %30 = load i64, i64* @breathing_halt, align 8
  %31 = load i64, i64* @BREATHING_HALT_OFF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @BREATHING_STEPS, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %24
  %39 = call i32 (...) @breathing_interrupt_disable()
  br label %40

40:                                               ; preds = %38, %33, %29
  %41 = load i32*, i32** @breathing_table, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 256
  %47 = call i32 @scale_backlight(i32 %46)
  %48 = call i32 @cie_lightness(i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = call i32 (...) @chSysLockFromISR()
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @PWM_FRACTION_TO_WIDTH(i32* @PWMD3, i32 65535, i32 %50)
  %52 = call i32 @pwmEnableChannelI(i32* @PWMD3, i32 0, i32 %51)
  %53 = call i32 (...) @chSysUnlockFromISR()
  ret void
}

declare dso_local i32 @breathing_interrupt_disable(...) #1

declare dso_local i32 @cie_lightness(i32) #1

declare dso_local i32 @scale_backlight(i32) #1

declare dso_local i32 @chSysLockFromISR(...) #1

declare dso_local i32 @pwmEnableChannelI(i32*, i32, i32) #1

declare dso_local i32 @PWM_FRACTION_TO_WIDTH(i32*, i32, i32) #1

declare dso_local i32 @chSysUnlockFromISR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
