; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_machine_pin.c_mp_hal_pin_open_drain.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_machine_pin.c_mp_hal_pin_open_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@pyb_pin_obj = common dso_local global %struct.TYPE_3__* null, align 8
@PAD_XPD_DCDC_CONF = common dso_local global i32 0, align 4
@RTC_GPIO_CONF = common dso_local global i32 0, align 4
@RTC_GPIO_ENABLE = common dso_local global i32 0, align 4
@RTC_GPIO_OUT = common dso_local global i32 0, align 4
@GPIO_PAD_DRIVER_ENABLE = common dso_local global i32 0, align 4
@GPIO_ENABLE_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_hal_pin_open_drain(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pyb_pin_obj, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i64 %5
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load i32, i32* @PAD_XPD_DCDC_CONF, align 4
  %13 = load i32, i32* @PAD_XPD_DCDC_CONF, align 4
  %14 = call i32 @READ_PERI_REG(i32 %13)
  %15 = and i32 %14, -68
  %16 = or i32 %15, 1
  %17 = call i32 @WRITE_PERI_REG(i32 %12, i32 %16)
  %18 = load i32, i32* @RTC_GPIO_CONF, align 4
  %19 = load i32, i32* @RTC_GPIO_CONF, align 4
  %20 = call i32 @READ_PERI_REG(i32 %19)
  %21 = and i32 %20, -2
  %22 = call i32 @WRITE_PERI_REG(i32 %18, i32 %21)
  %23 = load i32, i32* @RTC_GPIO_ENABLE, align 4
  %24 = load i32, i32* @RTC_GPIO_ENABLE, align 4
  %25 = call i32 @READ_PERI_REG(i32 %24)
  %26 = and i32 %25, -2
  %27 = call i32 @WRITE_PERI_REG(i32 %23, i32 %26)
  %28 = load i32, i32* @RTC_GPIO_OUT, align 4
  %29 = load i32, i32* @RTC_GPIO_OUT, align 4
  %30 = call i32 @READ_PERI_REG(i32 %29)
  %31 = and i32 %30, -2
  %32 = call i32 @WRITE_PERI_REG(i32 %28, i32 %31)
  br label %67

33:                                               ; preds = %1
  %34 = call i32 (...) @ETS_GPIO_INTR_DISABLE()
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PIN_FUNC_SELECT(i32 %37, i32 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @GPIO_ID_PIN(i32 %44)
  %46 = call i32 @GPIO_PIN_ADDR(i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GPIO_ID_PIN(i32 %49)
  %51 = call i32 @GPIO_PIN_ADDR(i32 %50)
  %52 = call i32 @GPIO_REG_READ(i32 %51)
  %53 = load i32, i32* @GPIO_PAD_DRIVER_ENABLE, align 4
  %54 = call i32 @GPIO_PIN_PAD_DRIVER_SET(i32 %53)
  %55 = or i32 %52, %54
  %56 = call i32 @GPIO_REG_WRITE(i32 %46, i32 %55)
  %57 = load i32, i32* @GPIO_ENABLE_ADDRESS, align 4
  %58 = load i32, i32* @GPIO_ENABLE_ADDRESS, align 4
  %59 = call i32 @GPIO_REG_READ(i32 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %59, %63
  %65 = call i32 @GPIO_REG_WRITE(i32 %57, i32 %64)
  %66 = call i32 (...) @ETS_GPIO_INTR_ENABLE()
  br label %67

67:                                               ; preds = %33, %11
  ret void
}

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @READ_PERI_REG(i32) #1

declare dso_local i32 @ETS_GPIO_INTR_DISABLE(...) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

declare dso_local i32 @GPIO_REG_WRITE(i32, i32) #1

declare dso_local i32 @GPIO_PIN_ADDR(i32) #1

declare dso_local i32 @GPIO_ID_PIN(i32) #1

declare dso_local i32 @GPIO_REG_READ(i32) #1

declare dso_local i32 @GPIO_PIN_PAD_DRIVER_SET(i32) #1

declare dso_local i32 @ETS_GPIO_INTR_ENABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
