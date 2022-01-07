; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp8266/rboot/rboot/extr_rboot.c_get_gpio16.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp8266/rboot/rboot/extr_rboot.c_get_gpio16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_GPIO_OUT = common dso_local global i32 0, align 4
@PAD_XPD_DCDC_CONF = common dso_local global i32 0, align 4
@RTC_GPIO_CONF = common dso_local global i32 0, align 4
@RTC_GPIO_ENABLE = common dso_local global i32 0, align 4
@RTC_GPIO_IN_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_gpio16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_gpio16() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @RTC_GPIO_OUT, align 4
  %3 = load i32, i32* @RTC_GPIO_OUT, align 4
  %4 = call i32 @READ_PERI_REG(i32 %3)
  %5 = and i32 %4, -2
  %6 = or i32 %5, 1
  %7 = call i32 @WRITE_PERI_REG(i32 %2, i32 %6)
  %8 = load i32, i32* @PAD_XPD_DCDC_CONF, align 4
  %9 = load i32, i32* @PAD_XPD_DCDC_CONF, align 4
  %10 = call i32 @READ_PERI_REG(i32 %9)
  %11 = and i32 %10, -68
  %12 = or i32 %11, 1
  %13 = call i32 @WRITE_PERI_REG(i32 %8, i32 %12)
  %14 = load i32, i32* @RTC_GPIO_CONF, align 4
  %15 = load i32, i32* @RTC_GPIO_CONF, align 4
  %16 = call i32 @READ_PERI_REG(i32 %15)
  %17 = and i32 %16, -2
  %18 = call i32 @WRITE_PERI_REG(i32 %14, i32 %17)
  %19 = load i32, i32* @RTC_GPIO_ENABLE, align 4
  %20 = load i32, i32* @RTC_GPIO_ENABLE, align 4
  %21 = call i32 @READ_PERI_REG(i32 %20)
  %22 = and i32 %21, -2
  %23 = call i32 @WRITE_PERI_REG(i32 %19, i32 %22)
  %24 = load i32, i32* @RTC_GPIO_IN_DATA, align 4
  %25 = call i32 @READ_PERI_REG(i32 %24)
  %26 = and i32 %25, 1
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @READ_PERI_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
