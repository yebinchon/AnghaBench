; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/tsl2561/extr_tsl2561.c_tsl2561Init.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/tsl2561/extr_tsl2561.c_tsl2561Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tsl2561_i2c_id = common dso_local global i32 0, align 4
@PLATFORM_I2C_SPEED_SLOW = common dso_local global i32 0, align 4
@_tsl2561Initialised = common dso_local global i32 0, align 4
@_tsl2561IntegrationTime = common dso_local global i32 0, align 4
@_tsl2561Gain = common dso_local global i32 0, align 4
@TSL2561_ERROR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsl2561Init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @tsl2561_i2c_id, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PLATFORM_I2C_SPEED_SLOW, align 4
  %9 = call i32 @platform_i2c_setup(i32 %5, i32 %6, i32 %7, i32 %8)
  store i32 1, i32* @_tsl2561Initialised, align 4
  %10 = load i32, i32* @_tsl2561IntegrationTime, align 4
  %11 = load i32, i32* @_tsl2561Gain, align 4
  %12 = call i32 @tsl2561SetTiming(i32 %10, i32 %11)
  %13 = load i32, i32* @TSL2561_ERROR_OK, align 4
  ret i32 %13
}

declare dso_local i32 @platform_i2c_setup(i32, i32, i32, i32) #1

declare dso_local i32 @tsl2561SetTiming(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
