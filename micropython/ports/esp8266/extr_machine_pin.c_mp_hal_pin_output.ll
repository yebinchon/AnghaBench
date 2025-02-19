; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_machine_pin.c_mp_hal_pin_output.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_machine_pin.c_mp_hal_pin_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@GPIO_MODE_OUTPUT = common dso_local global i32 0, align 4
@pin_mode = common dso_local global i32* null, align 8
@PAD_XPD_DCDC_CONF = common dso_local global i32 0, align 4
@RTC_GPIO_CONF = common dso_local global i32 0, align 4
@RTC_GPIO_ENABLE = common dso_local global i32 0, align 4
@pyb_pin_obj = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_hal_pin_output(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @GPIO_MODE_OUTPUT, align 4
  %5 = load i32*, i32** @pin_mode, align 8
  %6 = load i64, i64* %2, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  store i32 %4, i32* %7, align 4
  %8 = load i64, i64* %2, align 8
  %9 = icmp eq i64 %8, 16
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load i32, i32* @PAD_XPD_DCDC_CONF, align 4
  %12 = load i32, i32* @PAD_XPD_DCDC_CONF, align 4
  %13 = call i32 @READ_PERI_REG(i32 %12)
  %14 = and i32 %13, -68
  %15 = or i32 %14, 1
  %16 = call i32 @WRITE_PERI_REG(i32 %11, i32 %15)
  %17 = load i32, i32* @RTC_GPIO_CONF, align 4
  %18 = load i32, i32* @RTC_GPIO_CONF, align 4
  %19 = call i32 @READ_PERI_REG(i32 %18)
  %20 = and i32 %19, -2
  %21 = call i32 @WRITE_PERI_REG(i32 %17, i32 %20)
  %22 = load i32, i32* @RTC_GPIO_ENABLE, align 4
  %23 = load i32, i32* @RTC_GPIO_ENABLE, align 4
  %24 = call i32 @READ_PERI_REG(i32 %23)
  %25 = and i32 %24, -2
  %26 = or i32 %25, 1
  %27 = call i32 @WRITE_PERI_REG(i32 %22, i32 %26)
  br label %48

28:                                               ; preds = %1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pyb_pin_obj, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %3, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PIN_FUNC_SELECT(i32 %34, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PIN_PULLUP_DIS(i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 1, %45
  %47 = call i32 @gpio_output_set(i32 0, i32 0, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %28, %10
  ret void
}

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @READ_PERI_REG(i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

declare dso_local i32 @PIN_PULLUP_DIS(i32) #1

declare dso_local i32 @gpio_output_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
